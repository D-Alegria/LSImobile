part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState.initial() = Initial;

  factory AuthenticationState.unauthenticated() = Unauthenticated;

  factory AuthenticationState.authenticated() = Authenticated;

  factory AuthenticationState.newUser() = NewUser;

  factory AuthenticationState.error(String message) = Error;
}
