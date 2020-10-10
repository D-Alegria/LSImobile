import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:meta/meta.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthService _authService;

  AuthenticationBloc(this._authService) : super(Initial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(checkAuthenticated: (_) async* {
      final user = await _authService.currentUser;
      if (!user.isAuthenticated) {
        yield Unauthenticated();
      } else if (!user.isVerified) {
        yield Unverified();
      } else {
        yield Authenticated();
      }
    });
  }
}
