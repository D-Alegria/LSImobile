// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  CheckAuthenticated checkAuthenticated() {
    return CheckAuthenticated();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthenticated(CheckAuthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticated(CheckAuthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class $CheckAuthenticatedCopyWith<$Res> {
  factory $CheckAuthenticatedCopyWith(
          CheckAuthenticated value, $Res Function(CheckAuthenticated) then) =
      _$CheckAuthenticatedCopyWithImpl<$Res>;
}

class _$CheckAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CheckAuthenticatedCopyWith<$Res> {
  _$CheckAuthenticatedCopyWithImpl(
      CheckAuthenticated _value, $Res Function(CheckAuthenticated) _then)
      : super(_value, (v) => _then(v as CheckAuthenticated));

  @override
  CheckAuthenticated get _value => super._value as CheckAuthenticated;
}

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
  }) {
    assert(checkAuthenticated != null);
    return checkAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticated(),
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
  }) {
    assert(checkAuthenticated != null);
    return checkAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticated(CheckAuthenticated value),
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
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result authenticated(Authenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
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

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
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

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(),
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
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result unauthenticated(Unauthenticated value),
    Result authenticated(Authenticated value),
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
