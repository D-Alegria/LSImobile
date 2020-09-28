part of 'auth_view_cubit.dart';

@freezed
abstract class AuthViewState with _$AuthViewState {
  factory AuthViewState.showLoginView(bool showLogin) = ShowLoginView;
}