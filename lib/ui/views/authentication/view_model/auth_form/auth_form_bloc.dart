import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/requests/check_user_exists/check_user_exists_request.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/profile.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_form_bloc.freezed.dart';

part 'auth_form_event.dart';

part 'auth_form_state.dart';

@lazySingleton
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final AuthService _authService;

  AuthFormBloc(this._authService) : super(AuthFormState.initial());

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (EmailChanged value) async* {
        yield state.copyWith(
          emailAddress: value.email,
          authFailureOrSuccess: None(),
        );
      },
      passwordChanged: (PasswordChanged value) async* {
        yield state.copyWith(
          password: value.password,
          authFailureOrSuccess: None(),
        );
      },
      fullNameChanged: (FullNameChanged value) async* {
        yield state.copyWith(
          fullName: value.fullName,
          authFailureOrSuccess: None(),
        );
      },
      phoneNumberChanged: (PhoneNumberChanged value) async* {
        yield state.copyWith(
          phoneNumber: value.phoneNumber,
          authFailureOrSuccess: None(),
        );
      },
      verificationCodeChanged: (VerificationCodeChanged value) async* {
        yield state.copyWith(
          verificationCode: value.verificationCode,
          authFailureOrSuccess: None(),
        );
      },
      resendOTP: (_) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: None(),
        );

        await _authService.sendOTP(
          SendOTPRequest(
            phone: state.phoneNumber.trim(),
          ),
        );

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccess: None(),
        );
      },
      loginUser: (value) async* {
        final isEmailAddressValid = state.emailAddress.isEmail;
        final isPasswordValid = state.password.isValidPassword;

        Either<Glitch, Unit> failureOrSuccess;

        if (isEmailAddressValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: None(),
          );

          failureOrSuccess = await _authService.login(
            LoginUserRequest(
              email: state.emailAddress.trim(),
              password: state.password.trim(),
            ),
          );

          yield* failureOrSuccess.fold(
            (l) async* {},
            (r) async* {
              yield AuthFormState.initial();
            },
          );
        }

        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      registerUser: (value) async* {
        final isFullNameValid = state.fullName.isNotEmpty;
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
        final isEmailAddressValid = state.emailAddress.isEmail;
        final isPasswordValid = state.password.isValidPassword;

        Either<Glitch, Unit> failureOrSuccess;

        if (isFullNameValid &&
            isPhoneNumberValid &&
            isEmailAddressValid &&
            isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: None(),
          );

          var list = await Future.wait(
            [
              _authService.checkUserExists(
                  CheckUserExistsRequest(identity: state.phoneNumber.trim())),
              _authService.checkUserExists(
                  CheckUserExistsRequest(identity: state.emailAddress.trim())),
            ],
          );
          if (list.every((element) => element.isRight())) {
            failureOrSuccess = failureOrSuccess = await _authService.sendOTP(
              SendOTPRequest(phone: state.phoneNumber.trim()),
            );
          } else {
            failureOrSuccess = list.firstWhere((element) => element.isLeft());
          }
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      verifyUser: (value) async* {
        Either<Glitch, Unit> failureOrSuccess;

        //TODO validate Verification Code
        final isVerificationCodeValid = state.verificationCode.isValidPassword;

        if (isVerificationCodeValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: None(),
          );

          var result = await _authService.verifyOTP(
            VerifyOTPRequest(
              phone: state.phoneNumber.trim(),
              otp: int.parse(
                state.verificationCode.trim(),
              ),
            ),
          );

          await result.fold((l) => failureOrSuccess = result, (r) async {
            failureOrSuccess = await _authService.register(
              RegisterUserRequest(
                profile: Profile(
                  password: state.password.trim(),
                  email: state.emailAddress.trim(),
                  fullName: state.fullName.trim(),
                  isIndividual: "",
                  phone: state.phoneNumber.trim(),
                ),
              ),
            );
          });

          yield* failureOrSuccess.fold((l) async* {
            yield state.copyWith(
              showErrorMessages: true,
            );
          }, (r) async* {
            yield AuthFormState.initial();
          });
        }

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
