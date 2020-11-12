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

// ignore: unused_element
  SystemGlitch systemGlitch({@required String message}) {
    return SystemGlitch(
      message: message,
    );
  }

// ignore: unused_element
  UnAuthenticatedGlitch unAuthenticatedGlitch({@required String message}) {
    return UnAuthenticatedGlitch(
      message: message,
    );
  }

// ignore: unused_element
  LocalCacheGlitch localCacheGlitch({@required String message}) {
    return LocalCacheGlitch(
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
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
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
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return networkGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
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
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return networkGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
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
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return serverGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
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
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return serverGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
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

/// @nodoc
abstract class $SystemGlitchCopyWith<$Res> implements $GlitchCopyWith<$Res> {
  factory $SystemGlitchCopyWith(
          SystemGlitch value, $Res Function(SystemGlitch) then) =
      _$SystemGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$SystemGlitchCopyWithImpl<$Res> extends _$GlitchCopyWithImpl<$Res>
    implements $SystemGlitchCopyWith<$Res> {
  _$SystemGlitchCopyWithImpl(
      SystemGlitch _value, $Res Function(SystemGlitch) _then)
      : super(_value, (v) => _then(v as SystemGlitch));

  @override
  SystemGlitch get _value => super._value as SystemGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(SystemGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$SystemGlitch implements SystemGlitch {
  const _$SystemGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Glitch.systemGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $SystemGlitchCopyWith<SystemGlitch> get copyWith =>
      _$SystemGlitchCopyWithImpl<SystemGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return systemGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (systemGlitch != null) {
      return systemGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return systemGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (systemGlitch != null) {
      return systemGlitch(this);
    }
    return orElse();
  }
}

abstract class SystemGlitch implements Glitch {
  const factory SystemGlitch({@required String message}) = _$SystemGlitch;

  @override
  String get message;
  @override
  $SystemGlitchCopyWith<SystemGlitch> get copyWith;
}

/// @nodoc
abstract class $UnAuthenticatedGlitchCopyWith<$Res>
    implements $GlitchCopyWith<$Res> {
  factory $UnAuthenticatedGlitchCopyWith(UnAuthenticatedGlitch value,
          $Res Function(UnAuthenticatedGlitch) then) =
      _$UnAuthenticatedGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UnAuthenticatedGlitchCopyWithImpl<$Res>
    extends _$GlitchCopyWithImpl<$Res>
    implements $UnAuthenticatedGlitchCopyWith<$Res> {
  _$UnAuthenticatedGlitchCopyWithImpl(
      UnAuthenticatedGlitch _value, $Res Function(UnAuthenticatedGlitch) _then)
      : super(_value, (v) => _then(v as UnAuthenticatedGlitch));

  @override
  UnAuthenticatedGlitch get _value => super._value as UnAuthenticatedGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UnAuthenticatedGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UnAuthenticatedGlitch implements UnAuthenticatedGlitch {
  const _$UnAuthenticatedGlitch({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Glitch.unAuthenticatedGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnAuthenticatedGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UnAuthenticatedGlitchCopyWith<UnAuthenticatedGlitch> get copyWith =>
      _$UnAuthenticatedGlitchCopyWithImpl<UnAuthenticatedGlitch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return unAuthenticatedGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticatedGlitch != null) {
      return unAuthenticatedGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return unAuthenticatedGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticatedGlitch != null) {
      return unAuthenticatedGlitch(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticatedGlitch implements Glitch {
  const factory UnAuthenticatedGlitch({@required String message}) =
      _$UnAuthenticatedGlitch;

  @override
  String get message;
  @override
  $UnAuthenticatedGlitchCopyWith<UnAuthenticatedGlitch> get copyWith;
}

/// @nodoc
abstract class $LocalCacheGlitchCopyWith<$Res>
    implements $GlitchCopyWith<$Res> {
  factory $LocalCacheGlitchCopyWith(
          LocalCacheGlitch value, $Res Function(LocalCacheGlitch) then) =
      _$LocalCacheGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LocalCacheGlitchCopyWithImpl<$Res> extends _$GlitchCopyWithImpl<$Res>
    implements $LocalCacheGlitchCopyWith<$Res> {
  _$LocalCacheGlitchCopyWithImpl(
      LocalCacheGlitch _value, $Res Function(LocalCacheGlitch) _then)
      : super(_value, (v) => _then(v as LocalCacheGlitch));

  @override
  LocalCacheGlitch get _value => super._value as LocalCacheGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LocalCacheGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$LocalCacheGlitch implements LocalCacheGlitch {
  const _$LocalCacheGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Glitch.localCacheGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocalCacheGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LocalCacheGlitchCopyWith<LocalCacheGlitch> get copyWith =>
      _$LocalCacheGlitchCopyWithImpl<LocalCacheGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result networkGlitch(String message),
    @required Result serverGlitch(String message),
    @required Result systemGlitch(String message),
    @required Result unAuthenticatedGlitch(String message),
    @required Result localCacheGlitch(String message),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return localCacheGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result networkGlitch(String message),
    Result serverGlitch(String message),
    Result systemGlitch(String message),
    Result unAuthenticatedGlitch(String message),
    Result localCacheGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (localCacheGlitch != null) {
      return localCacheGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result networkGlitch(NetworkGlitch value),
    @required Result serverGlitch(ServerGlitch value),
    @required Result systemGlitch(SystemGlitch value),
    @required Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    @required Result localCacheGlitch(LocalCacheGlitch value),
  }) {
    assert(networkGlitch != null);
    assert(serverGlitch != null);
    assert(systemGlitch != null);
    assert(unAuthenticatedGlitch != null);
    assert(localCacheGlitch != null);
    return localCacheGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result networkGlitch(NetworkGlitch value),
    Result serverGlitch(ServerGlitch value),
    Result systemGlitch(SystemGlitch value),
    Result unAuthenticatedGlitch(UnAuthenticatedGlitch value),
    Result localCacheGlitch(LocalCacheGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (localCacheGlitch != null) {
      return localCacheGlitch(this);
    }
    return orElse();
  }
}

abstract class LocalCacheGlitch implements Glitch {
  const factory LocalCacheGlitch({@required String message}) =
      _$LocalCacheGlitch;

  @override
  String get message;
  @override
  $LocalCacheGlitchCopyWith<LocalCacheGlitch> get copyWith;
}
