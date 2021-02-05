part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.checkAuthenticated() = CheckAuthenticated;
  factory AuthenticationEvent.logoutRequest() = LogoutRequest;
}
