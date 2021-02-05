// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'make_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MakePaymentStateTearOff {
  const _$MakePaymentStateTearOff();

// ignore: unused_element
  _MakePaymentState call(
      {@required String amount,
      @required String paystackReference,
      @required String requestId,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _MakePaymentState(
      amount: amount,
      paystackReference: paystackReference,
      requestId: requestId,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MakePaymentState = _$MakePaymentStateTearOff();

/// @nodoc
mixin _$MakePaymentState {
  String get amount;
  String get paystackReference;
  String get requestId;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $MakePaymentStateCopyWith<MakePaymentState> get copyWith;
}

/// @nodoc
abstract class $MakePaymentStateCopyWith<$Res> {
  factory $MakePaymentStateCopyWith(
          MakePaymentState value, $Res Function(MakePaymentState) then) =
      _$MakePaymentStateCopyWithImpl<$Res>;
  $Res call(
      {String amount,
      String paystackReference,
      String requestId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$MakePaymentStateCopyWithImpl<$Res>
    implements $MakePaymentStateCopyWith<$Res> {
  _$MakePaymentStateCopyWithImpl(this._value, this._then);

  final MakePaymentState _value;
  // ignore: unused_field
  final $Res Function(MakePaymentState) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object paystackReference = freezed,
    Object requestId = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as String,
      paystackReference: paystackReference == freezed
          ? _value.paystackReference
          : paystackReference as String,
      requestId: requestId == freezed ? _value.requestId : requestId as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$MakePaymentStateCopyWith<$Res>
    implements $MakePaymentStateCopyWith<$Res> {
  factory _$MakePaymentStateCopyWith(
          _MakePaymentState value, $Res Function(_MakePaymentState) then) =
      __$MakePaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String amount,
      String paystackReference,
      String requestId,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$MakePaymentStateCopyWithImpl<$Res>
    extends _$MakePaymentStateCopyWithImpl<$Res>
    implements _$MakePaymentStateCopyWith<$Res> {
  __$MakePaymentStateCopyWithImpl(
      _MakePaymentState _value, $Res Function(_MakePaymentState) _then)
      : super(_value, (v) => _then(v as _MakePaymentState));

  @override
  _MakePaymentState get _value => super._value as _MakePaymentState;

  @override
  $Res call({
    Object amount = freezed,
    Object paystackReference = freezed,
    Object requestId = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_MakePaymentState(
      amount: amount == freezed ? _value.amount : amount as String,
      paystackReference: paystackReference == freezed
          ? _value.paystackReference
          : paystackReference as String,
      requestId: requestId == freezed ? _value.requestId : requestId as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_MakePaymentState implements _MakePaymentState {
  const _$_MakePaymentState(
      {@required this.amount,
      @required this.paystackReference,
      @required this.requestId,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(amount != null),
        assert(paystackReference != null),
        assert(requestId != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final String amount;
  @override
  final String paystackReference;
  @override
  final String requestId;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'MakePaymentState(amount: $amount, paystackReference: $paystackReference, requestId: $requestId, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MakePaymentState &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.paystackReference, paystackReference) ||
                const DeepCollectionEquality()
                    .equals(other.paystackReference, paystackReference)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
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
      const DeepCollectionEquality().hash(paystackReference) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$MakePaymentStateCopyWith<_MakePaymentState> get copyWith =>
      __$MakePaymentStateCopyWithImpl<_MakePaymentState>(this, _$identity);
}

abstract class _MakePaymentState implements MakePaymentState {
  const factory _MakePaymentState(
          {@required String amount,
          @required String paystackReference,
          @required String requestId,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_MakePaymentState;

  @override
  String get amount;
  @override
  String get paystackReference;
  @override
  String get requestId;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$MakePaymentStateCopyWith<_MakePaymentState> get copyWith;
}
