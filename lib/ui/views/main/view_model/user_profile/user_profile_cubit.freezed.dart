// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

// ignore: unused_element
  _UserProfileState call(
      {@nullable UserDetailsData userData,
      @required bool isLoading,
      @nullable Glitch glitch}) {
    return _UserProfileState(
      userData: userData,
      isLoading: isLoading,
      glitch: glitch,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  @nullable
  UserDetailsData get userData;
  bool get isLoading;
  @nullable
  Glitch get glitch;

  $UserProfileStateCopyWith<UserProfileState> get copyWith;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable UserDetailsData userData,
      bool isLoading,
      @nullable Glitch glitch});

  $UserDetailsDataCopyWith<$Res> get userData;
  $GlitchCopyWith<$Res> get glitch;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object userData = freezed,
    Object isLoading = freezed,
    Object glitch = freezed,
  }) {
    return _then(_value.copyWith(
      userData:
          userData == freezed ? _value.userData : userData as UserDetailsData,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      glitch: glitch == freezed ? _value.glitch : glitch as Glitch,
    ));
  }

  @override
  $UserDetailsDataCopyWith<$Res> get userData {
    if (_value.userData == null) {
      return null;
    }
    return $UserDetailsDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }

  @override
  $GlitchCopyWith<$Res> get glitch {
    if (_value.glitch == null) {
      return null;
    }
    return $GlitchCopyWith<$Res>(_value.glitch, (value) {
      return _then(_value.copyWith(glitch: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UserDetailsData userData,
      bool isLoading,
      @nullable Glitch glitch});

  @override
  $UserDetailsDataCopyWith<$Res> get userData;
  @override
  $GlitchCopyWith<$Res> get glitch;
}

/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(
      _UserProfileState _value, $Res Function(_UserProfileState) _then)
      : super(_value, (v) => _then(v as _UserProfileState));

  @override
  _UserProfileState get _value => super._value as _UserProfileState;

  @override
  $Res call({
    Object userData = freezed,
    Object isLoading = freezed,
    Object glitch = freezed,
  }) {
    return _then(_UserProfileState(
      userData:
          userData == freezed ? _value.userData : userData as UserDetailsData,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      glitch: glitch == freezed ? _value.glitch : glitch as Glitch,
    ));
  }
}

/// @nodoc
class _$_UserProfileState implements _UserProfileState {
  const _$_UserProfileState(
      {@nullable this.userData,
      @required this.isLoading,
      @nullable this.glitch})
      : assert(isLoading != null);

  @override
  @nullable
  final UserDetailsData userData;
  @override
  final bool isLoading;
  @override
  @nullable
  final Glitch glitch;

  @override
  String toString() {
    return 'UserProfileState(userData: $userData, isLoading: $isLoading, glitch: $glitch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileState &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.glitch, glitch) ||
                const DeepCollectionEquality().equals(other.glitch, glitch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(glitch);

  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  const factory _UserProfileState(
      {@nullable UserDetailsData userData,
      @required bool isLoading,
      @nullable Glitch glitch}) = _$_UserProfileState;

  @override
  @nullable
  UserDetailsData get userData;
  @override
  bool get isLoading;
  @override
  @nullable
  Glitch get glitch;
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith;
}
