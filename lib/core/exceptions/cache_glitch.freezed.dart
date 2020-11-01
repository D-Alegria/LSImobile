// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cache_glitch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CacheGlitchTearOff {
  const _$CacheGlitchTearOff();

// ignore: unused_element
  NoCacheFound noCacheFound({@required String message}) {
    return NoCacheFound(
      message: message,
    );
  }

// ignore: unused_element
  ErrorCacheGlitch errorCacheGlitch({@required String message}) {
    return ErrorCacheGlitch(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CacheGlitch = _$CacheGlitchTearOff();

/// @nodoc
mixin _$CacheGlitch {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noCacheFound(String message),
    @required Result errorCacheGlitch(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noCacheFound(String message),
    Result errorCacheGlitch(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noCacheFound(NoCacheFound value),
    @required Result errorCacheGlitch(ErrorCacheGlitch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noCacheFound(NoCacheFound value),
    Result errorCacheGlitch(ErrorCacheGlitch value),
    @required Result orElse(),
  });

  $CacheGlitchCopyWith<CacheGlitch> get copyWith;
}

/// @nodoc
abstract class $CacheGlitchCopyWith<$Res> {
  factory $CacheGlitchCopyWith(
          CacheGlitch value, $Res Function(CacheGlitch) then) =
      _$CacheGlitchCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CacheGlitchCopyWithImpl<$Res> implements $CacheGlitchCopyWith<$Res> {
  _$CacheGlitchCopyWithImpl(this._value, this._then);

  final CacheGlitch _value;
  // ignore: unused_field
  final $Res Function(CacheGlitch) _then;

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
abstract class $NoCacheFoundCopyWith<$Res>
    implements $CacheGlitchCopyWith<$Res> {
  factory $NoCacheFoundCopyWith(
          NoCacheFound value, $Res Function(NoCacheFound) then) =
      _$NoCacheFoundCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$NoCacheFoundCopyWithImpl<$Res> extends _$CacheGlitchCopyWithImpl<$Res>
    implements $NoCacheFoundCopyWith<$Res> {
  _$NoCacheFoundCopyWithImpl(
      NoCacheFound _value, $Res Function(NoCacheFound) _then)
      : super(_value, (v) => _then(v as NoCacheFound));

  @override
  NoCacheFound get _value => super._value as NoCacheFound;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(NoCacheFound(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$NoCacheFound implements NoCacheFound {
  const _$NoCacheFound({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'CacheGlitch.noCacheFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoCacheFound &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $NoCacheFoundCopyWith<NoCacheFound> get copyWith =>
      _$NoCacheFoundCopyWithImpl<NoCacheFound>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noCacheFound(String message),
    @required Result errorCacheGlitch(String message),
  }) {
    assert(noCacheFound != null);
    assert(errorCacheGlitch != null);
    return noCacheFound(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noCacheFound(String message),
    Result errorCacheGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCacheFound != null) {
      return noCacheFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noCacheFound(NoCacheFound value),
    @required Result errorCacheGlitch(ErrorCacheGlitch value),
  }) {
    assert(noCacheFound != null);
    assert(errorCacheGlitch != null);
    return noCacheFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noCacheFound(NoCacheFound value),
    Result errorCacheGlitch(ErrorCacheGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCacheFound != null) {
      return noCacheFound(this);
    }
    return orElse();
  }
}

abstract class NoCacheFound implements CacheGlitch {
  const factory NoCacheFound({@required String message}) = _$NoCacheFound;

  @override
  String get message;
  @override
  $NoCacheFoundCopyWith<NoCacheFound> get copyWith;
}

/// @nodoc
abstract class $ErrorCacheGlitchCopyWith<$Res>
    implements $CacheGlitchCopyWith<$Res> {
  factory $ErrorCacheGlitchCopyWith(
          ErrorCacheGlitch value, $Res Function(ErrorCacheGlitch) then) =
      _$ErrorCacheGlitchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ErrorCacheGlitchCopyWithImpl<$Res>
    extends _$CacheGlitchCopyWithImpl<$Res>
    implements $ErrorCacheGlitchCopyWith<$Res> {
  _$ErrorCacheGlitchCopyWithImpl(
      ErrorCacheGlitch _value, $Res Function(ErrorCacheGlitch) _then)
      : super(_value, (v) => _then(v as ErrorCacheGlitch));

  @override
  ErrorCacheGlitch get _value => super._value as ErrorCacheGlitch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ErrorCacheGlitch(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ErrorCacheGlitch implements ErrorCacheGlitch {
  const _$ErrorCacheGlitch({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'CacheGlitch.errorCacheGlitch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCacheGlitch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCacheGlitchCopyWith<ErrorCacheGlitch> get copyWith =>
      _$ErrorCacheGlitchCopyWithImpl<ErrorCacheGlitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noCacheFound(String message),
    @required Result errorCacheGlitch(String message),
  }) {
    assert(noCacheFound != null);
    assert(errorCacheGlitch != null);
    return errorCacheGlitch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noCacheFound(String message),
    Result errorCacheGlitch(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorCacheGlitch != null) {
      return errorCacheGlitch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noCacheFound(NoCacheFound value),
    @required Result errorCacheGlitch(ErrorCacheGlitch value),
  }) {
    assert(noCacheFound != null);
    assert(errorCacheGlitch != null);
    return errorCacheGlitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noCacheFound(NoCacheFound value),
    Result errorCacheGlitch(ErrorCacheGlitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorCacheGlitch != null) {
      return errorCacheGlitch(this);
    }
    return orElse();
  }
}

abstract class ErrorCacheGlitch implements CacheGlitch {
  const factory ErrorCacheGlitch({@required String message}) =
      _$ErrorCacheGlitch;

  @override
  String get message;
  @override
  $ErrorCacheGlitchCopyWith<ErrorCacheGlitch> get copyWith;
}
