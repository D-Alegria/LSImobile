// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'glitch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GlitchTearOff {
  const _$GlitchTearOff();

// ignore: unused_element
  NetworkGlitch networkGlitch({@required String message}) {
    return NetworkGlitch(
      message: message,
    );
  }

// ignore: unused_element
  ServerGlitch serverGlitch({@required String message}) {
    return ServerGlitch(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Glitch = _$GlitchTearOff();

/// @nodoc
mixin _$Glitch {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    @required Result orElse(),
  });

  $GlitchCopyWith<Glitch> get copyWith;
}

/// @nodoc
abstract class $GlitchCopyWith<$Res> {
  factory $GlitchCopyWith(Glitch value, $Res Function(Glitch) then) =
      _$GlitchCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GlitchCopyWithImpl<$Res> implements $GlitchCopyWith<$Res> {
  _$GlitchCopyWithImpl(this._value, this._then);

  final Glitch _value;
  // ignore: unused_field
  final $Res Function(Glitch) _then;

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
abstract class $NetworkGlitchCopyWith<$Res> implements $GlitchCopyWith<$Res> {
  factory $NetworkGlitchCopyWith(
          NetworkGlitch value, $Res Function(NetworkGlitch) then) =
      _$NetworkGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$NetworkGlitchCopyWithImpl<$Res> extends _$GlitchCopyWithImpl<$Res>
    implements $NetworkGlitchCopyWith<$Res> {
  _$NetworkGlitchCopyWithImpl(
      NetworkGlitch _value, $Res Function(NetworkGlitch) _then)
      : super(_value, (v) => _then(v as NetworkGlitch));

  @override
  NetworkGlitch get _value => super._value as NetworkGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(NetworkGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$NetworkGlitch implements NetworkGlitch {
  const _$NetworkGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Glitch.networkGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $NetworkGlitchCopyWith<NetworkGlitch> get copyWith =>
      _$NetworkGlitchCopyWithImpl<NetworkGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    return networkGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
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
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    return networkGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkGlitch != null) {
      return networkGlitch(this);
    }
    return orElse();
  }
}

abstract class NetworkGlitch implements Glitch {
  const factory NetworkGlitch({@required String message}) = _$NetworkGlitch;

  @override
  String get message;
  @override
  $NetworkGlitchCopyWith<NetworkGlitch> get copyWith;
}

/// @nodoc
abstract class $ServerGlitchCopyWith<$Res> implements $GlitchCopyWith<$Res> {
  factory $ServerGlitchCopyWith(
          ServerGlitch value, $Res Function(ServerGlitch) then) =
      _$ServerGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ServerGlitchCopyWithImpl<$Res> extends _$GlitchCopyWithImpl<$Res>
    implements $ServerGlitchCopyWith<$Res> {
  _$ServerGlitchCopyWithImpl(
      ServerGlitch _value, $Res Function(ServerGlitch) _then)
      : super(_value, (v) => _then(v as ServerGlitch));

  @override
  ServerGlitch get _value => super._value as ServerGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ServerGlitch implements ServerGlitch {
  const _$ServerGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Glitch.serverGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ServerGlitchCopyWith<ServerGlitch> get copyWith =>
      _$ServerGlitchCopyWithImpl<ServerGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    return serverGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverGlitch != null) {
      return serverGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    return serverGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverGlitch != null) {
      return serverGlitch(this);
    }
    return orElse();
  }
}

abstract class ServerGlitch implements Glitch {
  const factory ServerGlitch({@required String message}) = _$ServerGlitch;

  @override
  String get message;
  @override
  $ServerGlitchCopyWith<ServerGlitch> get copyWith;
}
