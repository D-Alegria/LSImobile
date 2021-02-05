// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rollover_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RolloverFormStateTearOff {
  const _$RolloverFormStateTearOff();

// ignore: unused_element
  _RolloverFormState call(
      {@required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _RolloverFormState(
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RolloverFormState = _$RolloverFormStateTearOff();

/// @nodoc
mixin _$RolloverFormState {
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $RolloverFormStateCopyWith<RolloverFormState> get copyWith;
}

/// @nodoc
abstract class $RolloverFormStateCopyWith<$Res> {
  factory $RolloverFormStateCopyWith(
          RolloverFormState value, $Res Function(RolloverFormState) then) =
      _$RolloverFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting, Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$RolloverFormStateCopyWithImpl<$Res>
    implements $RolloverFormStateCopyWith<$Res> {
  _$RolloverFormStateCopyWithImpl(this._value, this._then);

  final RolloverFormState _value;
  // ignore: unused_field
  final $Res Function(RolloverFormState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RolloverFormStateCopyWith<$Res>
    implements $RolloverFormStateCopyWith<$Res> {
  factory _$RolloverFormStateCopyWith(
          _RolloverFormState value, $Res Function(_RolloverFormState) then) =
      __$RolloverFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting, Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$RolloverFormStateCopyWithImpl<$Res>
    extends _$RolloverFormStateCopyWithImpl<$Res>
    implements _$RolloverFormStateCopyWith<$Res> {
  __$RolloverFormStateCopyWithImpl(
      _RolloverFormState _value, $Res Function(_RolloverFormState) _then)
      : super(_value, (v) => _then(v as _RolloverFormState));

  @override
  _RolloverFormState get _value => super._value as _RolloverFormState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_RolloverFormState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RolloverFormState implements _RolloverFormState {
  const _$_RolloverFormState(
      {@required this.isSubmitting, @required this.submitFailureOrSuccess})
      : assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'RolloverFormState(isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RolloverFormState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitFailureOrSuccess, submitFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSuccess, submitFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$RolloverFormStateCopyWith<_RolloverFormState> get copyWith =>
      __$RolloverFormStateCopyWithImpl<_RolloverFormState>(this, _$identity);
}

abstract class _RolloverFormState implements RolloverFormState {
  const factory _RolloverFormState(
          {@required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_RolloverFormState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$RolloverFormStateCopyWith<_RolloverFormState> get copyWith;
}
