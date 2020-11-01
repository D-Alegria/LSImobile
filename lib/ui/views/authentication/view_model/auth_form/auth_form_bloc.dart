import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
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

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final AuthService _authService;
  final LocalStorageRepo _localStorageRepo;

  AuthFormBloc(this._authService, this._localStorageRepo)
      : super(AuthFormState.initial());

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    yield* event.map(
      init: (_) async* {
        final user = await _authService.currentUser;
        final otp = _localStorageRepo.getString("OTP");
        yield state.copyWith(
          phoneNumber: user.phoneNumber,
          verificationCode: otp ?? "",
          authFailureOrSuccess: None(),
        );
      },
      emailChanged: (EmailChanged value) async* {
        yield state.copyWith(
          emailAddress: value.email,
          authFailureOrSuccess: None(),
        );
      },
      lastNameChanged: (LastNameChanged value) async* {
        yield state.copyWith(
          lastName: value.lastName,
          authFailureOrSuccess: None(),
        );
      },
      passwordChanged: (PasswordChanged value) async* {
        yield state.copyWith(
          password: value.password,
          authFailureOrSuccess: None(),
        );
      },
      firstNameChanged: (FirstNameChanged value) async* {
        yield state.copyWith(
          firstName: value.firstName,
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
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      registerUser: (value) async* {
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
        final isEmailAddressValid = state.emailAddress.isEmail;
        final isPasswordValid = state.password.isValidPassword;

        Either<Glitch, Unit> failureOrSuccess;

        if (isFirstNameValid &&
            isLastNameValid &&
            isPhoneNumberValid &&
            isEmailAddressValid &&
            isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: None(),
          );

          failureOrSuccess = await _authService.register(
            RegisterUserRequest(
              profile: Profile(
                password: state.password.trim(),
                email: state.emailAddress.trim(),
                fullName: state.firstName.trim() + " " + state.lastName.trim(),
                isIndividual: "",
                phone: state.phoneNumber.trim(),
              ),
            ),
          );

          await failureOrSuccess.fold(
            (failure) => null,
            (success) async {
              await _authService.sendOTP(
                SendOTPRequest(
                  phone: state.phoneNumber.trim(),
                ),
              );
            },
          );
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

          failureOrSuccess = await _authService.verifyOTP(
            VerifyOTPRequest(
              phone: state.phoneNumber.trim(),
              otp: int.parse(
                state.verificationCode.trim(),
              ),
            ),
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
