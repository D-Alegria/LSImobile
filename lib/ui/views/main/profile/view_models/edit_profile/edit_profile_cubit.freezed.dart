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
  _EditProfileState call({@required TabController tabController}) {
    return _EditProfileState(
      tabController: tabController,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  TabController get tabController;

  $EditProfileStateCopyWith<EditProfileState> get copyWith;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call({TabController tabController});
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
    Object tabController = freezed,
  }) {
    return _then(_value.copyWith(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController as TabController,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({TabController tabController});
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
    Object tabController = freezed,
  }) {
    return _then(_EditProfileState(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController as TabController,
    ));
  }
}

/// @nodoc
class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState({@required this.tabController})
      : assert(tabController != null);

  @override
  final TabController tabController;

  @override
  String toString() {
    return 'EditProfileState(tabController: $tabController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.tabController, tabController) ||
                const DeepCollectionEquality()
                    .equals(other.tabController, tabController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tabController);

  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState({@required TabController tabController}) =
      _$_EditProfileState;

  @override
  TabController get tabController;
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith;
}
