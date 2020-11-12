import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
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
    yield* event.map(
      checkAuthenticated: (_) async* {
        final result = await _authService.currentUser;
        yield* result.fold(
          (l) async* {
            if (l is UnAuthenticatedGlitch) yield Unauthenticated();
            yield Error(l.message);
          },
          (r) async* {
            if (!r.isAuthenticated) {
              yield Unauthenticated();
            } else {
              yield Authenticated();
            }
          },
        );
      },
      logoutRequest: (_) async* {
        yield Initial();
        try {
          final result = await _authService.logout();
          yield* result.fold(
            (l) async* {
              yield Error(l.message);
            },
            (r) async* {
              yield Unauthenticated();
            },
          );
        } on Error catch (e) {
          print(e);
          yield Error("Error Occurred: BloC");
        }
      },
    );
  }
}
