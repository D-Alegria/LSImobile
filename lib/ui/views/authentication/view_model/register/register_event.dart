part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  factory RegisterEvent.registerUser() = RegisterUser;

  factory RegisterEvent.verifyUser() = VerifyUser;
}