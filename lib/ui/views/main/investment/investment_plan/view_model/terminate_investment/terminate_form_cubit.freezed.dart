// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'terminate_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TerminateFormStateTearOff {
  const _$TerminateFormStateTearOff();

// ignore: unused_element
  _TerminateFormState call(
      {@required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _TerminateFormState(
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TerminateFormState = _$TerminateFormStateTearOff();

/// @nodoc
mixin _$TerminateFormState {
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $TerminateFormStateCopyWith<TerminateFormState> get copyWith;
}

/// @nodoc
abstract class $TerminateFormStateCopyWith<$Res> {
  factory $TerminateFormStateCopyWith(
          TerminateFormState value, $Res Function(TerminateFormState) then) =
      _$TerminateFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting, Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$TerminateFormStateCopyWithImpl<$Res>
    implements $TerminateFormStateCopyWith<$Res> {
  _$TerminateFormStateCopyWithImpl(this._value, this._then);

  final TerminateFormState _value;
  // ignore: unused_field
  final $Res Function(TerminateFormState) _then;

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
abstract class _$TerminateFormStateCopyWith<$Res>
    implements $TerminateFormStateCopyWith<$Res> {
  factory _$TerminateFormStateCopyWith(
          _TerminateFormState value, $Res Function(_TerminateFormState) then) =
      __$TerminateFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting, Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$TerminateFormStateCopyWithImpl<$Res>
    extends _$TerminateFormStateCopyWithImpl<$Res>
    implements _$TerminateFormStateCopyWith<$Res> {
  __$TerminateFormStateCopyWithImpl(
      _TerminateFormState _value, $Res Function(_TerminateFormState) _then)
      : super(_value, (v) => _then(v as _TerminateFormState));

  @override
  _TerminateFormState get _value => super._value as _TerminateFormState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_TerminateFormState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TerminateFormState implements _TerminateFormState {
  const _$_TerminateFormState(
      {@required this.isSubmitting, @required this.submitFailureOrSuccess})
      : assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'TerminateFormState(isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TerminateFormState &&
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
  _$TerminateFormStateCopyWith<_TerminateFormState> get copyWith =>
      __$TerminateFormStateCopyWithImpl<_TerminateFormState>(this, _$identity);
}

abstract class _TerminateFormState implements TerminateFormState {
  const factory _TerminateFormState(
          {@required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_TerminateFormState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$TerminateFormStateCopyWith<_TerminateFormState> get copyWith;
}
