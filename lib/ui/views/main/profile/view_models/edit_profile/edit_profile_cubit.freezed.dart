// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

// ignore: unused_element
  _EditProfileState call(
      {UserDetailsRequest userDetails,
      @required bool isEdited,
      @required bool isSaved}) {
    return _EditProfileState(
      userDetails: userDetails,
      isEdited: isEdited,
      isSaved: isSaved,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  UserDetailsRequest get userDetails;
  bool get isEdited;
  bool get isSaved;

  $EditProfileStateCopyWith<EditProfileState> get copyWith;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest userDetails, bool isEdited, bool isSaved});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object userDetails = freezed,
    Object isEdited = freezed,
    Object isSaved = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      isEdited: isEdited == freezed ? _value.isEdited : isEdited as bool,
      isSaved: isSaved == freezed ? _value.isSaved : isSaved as bool,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails {
    if (_value.userDetails == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({UserDetailsRequest userDetails, bool isEdited, bool isSaved});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object userDetails = freezed,
    Object isEdited = freezed,
    Object isSaved = freezed,
  }) {
    return _then(_EditProfileState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      isEdited: isEdited == freezed ? _value.isEdited : isEdited as bool,
      isSaved: isSaved == freezed ? _value.isSaved : isSaved as bool,
    ));
  }
}

/// @nodoc
class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {this.userDetails, @required this.isEdited, @required this.isSaved})
      : assert(isEdited != null),
        assert(isSaved != null);

  @override
  final UserDetailsRequest userDetails;
  @override
  final bool isEdited;
  @override
  final bool isSaved;

  @override
  String toString() {
    return 'EditProfileState(userDetails: $userDetails, isEdited: $isEdited, isSaved: $isSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.isEdited, isEdited) ||
                const DeepCollectionEquality()
                    .equals(other.isEdited, isEdited)) &&
            (identical(other.isSaved, isSaved) ||
                const DeepCollectionEquality().equals(other.isSaved, isSaved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(isEdited) ^
      const DeepCollectionEquality().hash(isSaved);

  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {UserDetailsRequest userDetails,
      @required bool isEdited,
      @required bool isSaved}) = _$_EditProfileState;

  @override
  UserDetailsRequest get userDetails;
  @override
  bool get isEdited;
  @override
  bool get isSaved;
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith;
}
