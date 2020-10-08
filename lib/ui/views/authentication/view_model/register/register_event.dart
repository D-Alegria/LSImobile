part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  factory RegisterEvent.emailChanged(String email) = EmailChanged;

  factory RegisterEvent.firstNameChanged(String firstName) = FirstNameChanged;

  factory RegisterEvent.lastNameChanged(String lastName) = LastNameChanged;

  factory RegisterEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;

  factory RegisterEvent.passwordChanged(String password) = PasswordChanged;

  factory RegisterEvent.registerUser() = RegisterUser;

  factory RegisterEvent.verifyUser() = VerifyUser;
}
