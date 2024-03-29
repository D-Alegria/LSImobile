// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  CheckAuthenticated checkAuthenticated() {
    return CheckAuthenticated();
  }

// ignore: unused_element
  LogoutRequest logoutRequest() {
    return LogoutRequest();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticated(),
    @required Result logoutRequest(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticated(),
    Result logoutRequest(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthenticated(CheckAuthenticated value),
    @required Result logoutRequest(LogoutRequest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticated(CheckAuthenticated value),
    Result logoutRequest(LogoutRequest value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $CheckAuthenticatedCopyWith<$Res> {
  factory $CheckAuthenticatedCopyWith(
          CheckAuthenticated value, $Res Function(CheckAuthenticated) then) =
      _$CheckAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CheckAuthenticatedCopyWith<$Res> {
  _$CheckAuthenticatedCopyWithImpl(
      CheckAuthenticated _value, $Res Function(CheckAuthenticated) _then)
      : super(_value, (v) => _then(v as CheckAuthenticated));

  @override
  CheckAuthenticated get _value => super._value as CheckAuthenticated;
}

/// @nodoc
class _$CheckAuthenticated implements CheckAuthenticated {
  _$CheckAuthenticated();

  @override
  String toString() {
    return 'AuthenticationEvent.checkAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticated(),
    @required Result logoutRequest(),
  }) {
    assert(checkAuthenticated != null);
    assert(logoutRequest != null);
    return checkAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticated(),
    Result logoutRequest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthenticated != null) {
      return checkAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthenticated(CheckAuthenticated value),
    @required Result logoutRequest(LogoutRequest value),
  }) {
    assert(checkAuthenticated != null);
    assert(logoutRequest != null);
    return checkAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticated(CheckAuthenticated value),
    Result logoutRequest(LogoutRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthenticated != null) {
      return checkAuthenticated(this);
    }
    return orElse();
  }
}

abstract class CheckAuthenticated implements AuthenticationEvent {
  factory CheckAuthenticated() = _$CheckAuthenticated;
}

/// @nodoc
abstract class $LogoutRequestCopyWith<$Res> {
  factory $LogoutRequestCopyWith(
          LogoutRequest value, $Res Function(LogoutRequest) then) =
      _$LogoutRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutRequestCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $LogoutRequestCopyWith<$Res> {
  _$LogoutRequestCopyWithImpl(
      LogoutRequest _value, $Res Function(LogoutRequest) _then)
      : super(_value, (v) => _then(v as LogoutRequest));

  @override
  LogoutRequest get _value => super._value as LogoutRequest;
}

/// @nodoc
class _$LogoutRequest implements LogoutRequest {
  _$LogoutRequest();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticated(),
    @required Result logoutRequest(),
  }) {
    assert(checkAuthenticated != null);
    assert(logoutRequest != null);
    return logoutRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticated(),
    Result logoutRequest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequest != null) {
      return logoutRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthenticated(CheckAuthenticated value),
    @required Result logoutRequest(LogoutRequest value),
  }) {
    assert(checkAuthenticated != null);
    assert(logoutRequest != null);
    return logoutRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticated(CheckAuthenticated value),
    Result logoutRequest(LogoutRequest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequest != null) {
      return logoutRequest(this);
    }
    return orElse();
  }
}

abstract class LogoutRequest implements AuthenticationEvent {
  factory LogoutRequest() = _$LogoutRequest;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  Initial initial() {
    return Initial();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return Unauthenticated();
  }

// ignore: unused_element
  Authenticated authenticated() {
    return Authenticated();
  }

// ignore: unused_element
  NewUser newUser() {
    return NewUser();
  }

// ignore: unused_element
  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc
class _$Unauthenticated implements Unauthenticated {
  _$Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationState {
  factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc
class _$Authenticated implements Authenticated {
  _$Authenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $NewUserCopyWith<$Res> {
  factory $NewUserCopyWith(NewUser value, $Res Function(NewUser) then) =
      _$NewUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewUserCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $NewUserCopyWith<$Res> {
  _$NewUserCopyWithImpl(NewUser _value, $Res Function(NewUser) _then)
      : super(_value, (v) => _then(v as NewUser));

  @override
  NewUser get _value => super._value as NewUser;
}

/// @nodoc
class _$NewUser implements NewUser {
  _$NewUser();

  @override
  String toString() {
    return 'AuthenticationState.newUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return newUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newUser != null) {
      return newUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class NewUser implements AuthenticationState {
  factory NewUser() = _$NewUser;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  _$Error(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
    @required Result newUser(),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    Result newUser(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
    @required Result newUser(NewUser value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(newUser != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    Result newUser(NewUser value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthenticationState {
  factory Error(String message) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
