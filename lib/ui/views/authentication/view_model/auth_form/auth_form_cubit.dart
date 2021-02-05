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
import 'package:lsi_mobile/core/models/requests/reset_password/reset_password_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_form_cubit.freezed.dart';

part 'auth_form_state.dart';

@lazySingleton
class AuthFormCubit extends Cubit<AuthFormState> {
  final AuthService _authService;

  AuthFormCubit(this._authService) : super(AuthFormState.initial());

  Future<void> init() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: None(),
    ));

    final result = await _authService.currentUser;

    result.fold(
      (l) => null,
      (r) => emit(state.copyWith(emailAddress: r.email)),
    );

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: None(),
    ));
  }

  void emailChanged(String email) => emit(state.copyWith(
        emailAddress: email,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

  void passwordChanged(String password) => emit(state.copyWith(
        password: password,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

  void fullNameChanged(String fullName) => emit(state.copyWith(
        fullName: fullName,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

  void phoneNumberChanged(String phoneNumber) => emit(state.copyWith(
        phoneNumber: phoneNumber,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

  void verificationCodeChanged(String verificationCode) => emit(state.copyWith(
        verificationCode: verificationCode,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

  Future<void> resendOTP() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: None(),
    ));

    final result = await _authService.sendOTP(
      SendOTPRequest(phone: state.phoneNumber.trim()),
    );

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: optionOf(result),
      verifyFailureOrSuccess: None(),
    ));
  }

  Future<void> resetPassword() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: None(),
    ));

    final result = await _authService.resetPassword(
      ResetPasswordRequest(email: state.emailAddress.trim()),
    );

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: optionOf(result),
    ));
  }

  Future<void> loginUser() async {
    final isEmailAddressValid = state.emailAddress.isEmail;
    final isPasswordValid = state.password.isValidPassword;

    Either<Glitch, Unit> failureOrSuccess;

    if (isEmailAddressValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

      failureOrSuccess = await _authService.login(
        LoginUserRequest(
          email: state.emailAddress.trim(),
          password: state.password.trim(),
        ),
      );

      failureOrSuccess.fold(
        (l) {},
        (r) => AuthFormState.initial(),
      );
    }

    emit(state.copyWith(
      showErrorMessages: true,
      isSubmitting: false,
      authFailureOrSuccess: optionOf(failureOrSuccess),
      verifyFailureOrSuccess: None(),
    ));
  }

  Future<void> registerUser() async {
    final isFullNameValid = state.fullName.isNotEmpty;
    final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
    final isEmailAddressValid = state.emailAddress.isEmail;
    final isPasswordValid = state.password.isValidPassword;

    Either<Glitch, Unit> failureOrSuccess;

    if (isFullNameValid &&
        isPhoneNumberValid &&
        isEmailAddressValid &&
        isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

      var list = await Future.wait(
        [
          _authService.checkUserExists(
              CheckUserExistsRequest(identity: state.phoneNumber.trim())),
          _authService.checkUserExists(
              CheckUserExistsRequest(identity: state.emailAddress.trim())),
        ],
      );
      if (list.every((element) => element.isRight())) {
        failureOrSuccess = await _authService.sendOTP(
          SendOTPRequest(phone: state.phoneNumber.trim()),
        );
      } else {
        failureOrSuccess = list.firstWhere((element) => element.isLeft());
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
      verifyFailureOrSuccess: None(),
    ));
  }

  Future<void> verifyUser() async {
    Either<Glitch, Unit> failureOrSuccess;

    final isVerificationCodeValid = state.verificationCode.isValidPassword;

    if (isVerificationCodeValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      ));

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

      failureOrSuccess.fold(
        (l) async* {
          emit(state.copyWith(
            showErrorMessages: true,
          ));
        },
        (r) => emit(AuthFormState.initial()),
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccess: None(),
      verifyFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
