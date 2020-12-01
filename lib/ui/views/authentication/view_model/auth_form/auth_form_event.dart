part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormEvent with _$AuthFormEvent {
  factory AuthFormEvent.emailChanged(String email) = EmailChanged;

  factory AuthFormEvent.fullNameChanged(String fullName) = FullNameChanged;

  factory AuthFormEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;

  factory AuthFormEvent.passwordChanged(String password) = PasswordChanged;

  factory AuthFormEvent.verificationCodeChanged(String verificationCode) =
      VerificationCodeChanged;

  factory AuthFormEvent.loginUser() = LoginUser;

  factory AuthFormEvent.registerUser() = RegisterUser;

  factory AuthFormEvent.verifyUser() = VerifyUser;

  factory AuthFormEvent.resendOTP() = ResendOTP;
}
