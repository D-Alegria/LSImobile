// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_glitch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthGlitchTearOff {
  const _$AuthGlitchTearOff();

// ignore: unused_element
  AuthNetworkGlitch networkGlitch({@required String message}) {
    return AuthNetworkGlitch(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthGlitch = _$AuthGlitchTearOff();

/// @nodoc
mixin _$AuthGlitch {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(AuthNetworkGlitch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(AuthNetworkGlitch value),
    @required Result orElse(),
  });

  $AuthGlitchCopyWith<AuthGlitch> get copyWith;
}

/// @nodoc
abstract class $AuthGlitchCopyWith<$Res> {
  factory $AuthGlitchCopyWith(
          AuthGlitch value, $Res Function(AuthGlitch) then) =
      _$AuthGlitchCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthGlitchCopyWithImpl<$Res> implements $AuthGlitchCopyWith<$Res> {
  _$AuthGlitchCopyWithImpl(this._value, this._then);

  final AuthGlitch _value;
  // ignore: unused_field
  final $Res Function(AuthGlitch) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $AuthNetworkGlitchCopyWith<$Res>
    implements $AuthGlitchCopyWith<$Res> {
  factory $AuthNetworkGlitchCopyWith(
          AuthNetworkGlitch value, $Res Function(AuthNetworkGlitch) then) =
      _$AuthNetworkGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$AuthNetworkGlitchCopyWithImpl<$Res>
    extends _$AuthGlitchCopyWithImpl<$Res>
    implements $AuthNetworkGlitchCopyWith<$Res> {
  _$AuthNetworkGlitchCopyWithImpl(
      AuthNetworkGlitch _value, $Res Function(AuthNetworkGlitch) _then)
      : super(_value, (v) => _then(v as AuthNetworkGlitch));

  @override
  AuthNetworkGlitch get _value => super._value as AuthNetworkGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(AuthNetworkGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$AuthNetworkGlitch implements AuthNetworkGlitch {
  const _$AuthNetworkGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthGlitch.networkGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthNetworkGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $AuthNetworkGlitchCopyWith<AuthNetworkGlitch> get copyWith =>
      _$AuthNetworkGlitchCopyWithImpl<AuthNetworkGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
  }) {
    assert(networkGlitch != null);
    return networkGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkGlitch != null) {
      return networkGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(AuthNetworkGlitch value),
  }) {
    assert(networkGlitch != null);
    return networkGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(AuthNetworkGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkGlitch != null) {
      return networkGlitch(this);
    }
    return orElse();
  }
}

abstract class AuthNetworkGlitch implements AuthGlitch {
  const factory AuthNetworkGlitch({@required String message}) =
      _$AuthNetworkGlitch;

  @override
  String get message;
  @override
  $AuthNetworkGlitchCopyWith<AuthNetworkGlitch> get copyWith;
}
