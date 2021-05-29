import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'provide_bvn_bloc.freezed.dart';

part 'provide_bvn_event.dart';

part 'provide_bvn_state.dart';

@lazySingleton
class ProvideBvnBloc extends Bloc<ProvideBvnEvent, ProvideBvnState> {
  final BankRepo _bankRepo;
  final UserRepo _userRepo;

  ProvideBvnBloc(this._bankRepo, this._userRepo)
      : super(ProvideBvnState.initial());

  @override
  Stream<ProvideBvnState> mapEventToState(
    ProvideBvnEvent event,
  ) async* {
    yield* event.map(
      checkBVN: (value) async* {
        final isBvnValid = state.bvn.isBvn;

        Either<Glitch, Unit> failureOrSuccess;

        if (isBvnValid) {
          yield state.copyWith(
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );

          Either<Glitch, UserDetailsData> userResponse =
              await _userRepo.userData();

          await userResponse.fold((l) => null, (r) async {
            UserDetailsRequest data =
                r.userData.data.copyWith.profile(bvn: state.bvn);
            failureOrSuccess = await _userRepo.saveUserData(data);
          });
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      verifyBVN: (value) async* {
        final isOtpValid = state.otp.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isOtpValid) {
          yield state.copyWith(
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );
          var tnx;
          final local = await _userRepo.getObject("TNX");
          local.fold((l) => tnx = "", (r) => tnx = r);
          failureOrSuccess = await _bankRepo
              .verifyBvnWithOTP(VerifyBVNOtpRequest(otp: state.otp, txn: tnx));

          yield* failureOrSuccess.fold((l) async* {
            yield state.copyWith(
              showErrorMessages: true,
            );
          }, (r) async* {
            yield ProvideBvnState.initial();
          });
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      bvnChanged: (BvnChanged value) async* {
        yield state.copyWith(
          bvn: value.bvn,
          submitFailureOrSuccess: None(),
        );
      },
      resendOtp: (ResendOtp value) async* {
        yield state.copyWith(
          isSubmitting: true,
          submitFailureOrSuccess: None(),
        );

        await _bankRepo.initiateBvnValidation(
          InitiateBVNValidationRequest(
            bvn: state.bvn,
            firstName: value.fullName,
            lastName: value.fullName,
          ),
        );

        yield state.copyWith(
          isSubmitting: false,
          submitFailureOrSuccess: None(),
        );
      },
      otpChanged: (OtpChanged value) async* {
        yield state.copyWith(
          otp: value.otp,
          submitFailureOrSuccess: None(),
        );
      },
    );
  }
}
