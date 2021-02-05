// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'withdraw_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WithdrawFormStateTearOff {
  const _$WithdrawFormStateTearOff();

// ignore: unused_element
  _WithdrawFormState call(
      {@required String amount,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _WithdrawFormState(
      amount: amount,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WithdrawFormState = _$WithdrawFormStateTearOff();

/// @nodoc
mixin _$WithdrawFormState {
  String get amount;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $WithdrawFormStateCopyWith<WithdrawFormState> get copyWith;
}

/// @nodoc
abstract class $WithdrawFormStateCopyWith<$Res> {
  factory $WithdrawFormStateCopyWith(
          WithdrawFormState value, $Res Function(WithdrawFormState) then) =
      _$WithdrawFormStateCopyWithImpl<$Res>;
  $Res call(
      {String amount,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$WithdrawFormStateCopyWithImpl<$Res>
    implements $WithdrawFormStateCopyWith<$Res> {
  _$WithdrawFormStateCopyWithImpl(this._value, this._then);

  final WithdrawFormState _value;
  // ignore: unused_field
  final $Res Function(WithdrawFormState) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawFormStateCopyWith<$Res>
    implements $WithdrawFormStateCopyWith<$Res> {
  factory _$WithdrawFormStateCopyWith(
          _WithdrawFormState value, $Res Function(_WithdrawFormState) then) =
      __$WithdrawFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String amount,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$WithdrawFormStateCopyWithImpl<$Res>
    extends _$WithdrawFormStateCopyWithImpl<$Res>
    implements _$WithdrawFormStateCopyWith<$Res> {
  __$WithdrawFormStateCopyWithImpl(
      _WithdrawFormState _value, $Res Function(_WithdrawFormState) _then)
      : super(_value, (v) => _then(v as _WithdrawFormState));

  @override
  _WithdrawFormState get _value => super._value as _WithdrawFormState;

  @override
  $Res call({
    Object amount = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_WithdrawFormState(
      amount: amount == freezed ? _value.amount : amount as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_WithdrawFormState implements _WithdrawFormState {
  const _$_WithdrawFormState(
      {@required this.amount,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(amount != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final String amount;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'WithdrawFormState(amount: $amount, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithdrawFormState &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
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
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$WithdrawFormStateCopyWith<_WithdrawFormState> get copyWith =>
      __$WithdrawFormStateCopyWithImpl<_WithdrawFormState>(this, _$identity);
}

abstract class _WithdrawFormState implements WithdrawFormState {
  const factory _WithdrawFormState(
          {@required String amount,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_WithdrawFormState;

  @override
  String get amount;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$WithdrawFormStateCopyWith<_WithdrawFormState> get copyWith;
}
