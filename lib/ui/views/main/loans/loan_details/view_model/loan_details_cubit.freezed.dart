// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoanDetailsStateTearOff {
  const _$LoanDetailsStateTearOff();

// ignore: unused_element
  _LoanDetailsState call(
      {UserDetailsRequest data,
      LoanRequest loanRequest,
      @required
          double amount,
      @required
          String time,
      @required
          String reason,
      @required
          List<Value> reasons,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess}) {
    return _LoanDetailsState(
      data: data,
      loanRequest: loanRequest,
      amount: amount,
      time: time,
      reason: reason,
      reasons: reasons,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitLoanDetailsFailureOrSuccess: submitLoanDetailsFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanDetailsState = _$LoanDetailsStateTearOff();

/// @nodoc
mixin _$LoanDetailsState {
  UserDetailsRequest get data;
  LoanRequest get loanRequest;
  double get amount;
  String get time;
  String get reason;
  List<Value> get reasons;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitLoanDetailsFailureOrSuccess;

  $LoanDetailsStateCopyWith<LoanDetailsState> get copyWith;
}

/// @nodoc
abstract class $LoanDetailsStateCopyWith<$Res> {
  factory $LoanDetailsStateCopyWith(
          LoanDetailsState value, $Res Function(LoanDetailsState) then) =
      _$LoanDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest data,
      LoanRequest loanRequest,
      double amount,
      String time,
      String reason,
      List<Value> reasons,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get data;
  $LoanRequestCopyWith<$Res> get loanRequest;
}

/// @nodoc
class _$LoanDetailsStateCopyWithImpl<$Res>
    implements $LoanDetailsStateCopyWith<$Res> {
  _$LoanDetailsStateCopyWithImpl(this._value, this._then);

  final LoanDetailsState _value;
  // ignore: unused_field
  final $Res Function(LoanDetailsState) _then;

  @override
  $Res call({
    Object data = freezed,
    Object loanRequest = freezed,
    Object amount = freezed,
    Object time = freezed,
    Object reason = freezed,
    Object reasons = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitLoanDetailsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as UserDetailsRequest,
      loanRequest: loanRequest == freezed
          ? _value.loanRequest
          : loanRequest as LoanRequest,
      amount: amount == freezed ? _value.amount : amount as double,
      time: time == freezed ? _value.time : time as String,
      reason: reason == freezed ? _value.reason : reason as String,
      reasons: reasons == freezed ? _value.reasons : reasons as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitLoanDetailsFailureOrSuccess: submitLoanDetailsFailureOrSuccess ==
              freezed
          ? _value.submitLoanDetailsFailureOrSuccess
          : submitLoanDetailsFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $LoanRequestCopyWith<$Res> get loanRequest {
    if (_value.loanRequest == null) {
      return null;
    }
    return $LoanRequestCopyWith<$Res>(_value.loanRequest, (value) {
      return _then(_value.copyWith(loanRequest: value));
    });
  }
}

/// @nodoc
abstract class _$LoanDetailsStateCopyWith<$Res>
    implements $LoanDetailsStateCopyWith<$Res> {
  factory _$LoanDetailsStateCopyWith(
          _LoanDetailsState value, $Res Function(_LoanDetailsState) then) =
      __$LoanDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsRequest data,
      LoanRequest loanRequest,
      double amount,
      String time,
      String reason,
      List<Value> reasons,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get data;
  @override
  $LoanRequestCopyWith<$Res> get loanRequest;
}

/// @nodoc
class __$LoanDetailsStateCopyWithImpl<$Res>
    extends _$LoanDetailsStateCopyWithImpl<$Res>
    implements _$LoanDetailsStateCopyWith<$Res> {
  __$LoanDetailsStateCopyWithImpl(
      _LoanDetailsState _value, $Res Function(_LoanDetailsState) _then)
      : super(_value, (v) => _then(v as _LoanDetailsState));

  @override
  _LoanDetailsState get _value => super._value as _LoanDetailsState;

  @override
  $Res call({
    Object data = freezed,
    Object loanRequest = freezed,
    Object amount = freezed,
    Object time = freezed,
    Object reason = freezed,
    Object reasons = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitLoanDetailsFailureOrSuccess = freezed,
  }) {
    return _then(_LoanDetailsState(
      data: data == freezed ? _value.data : data as UserDetailsRequest,
      loanRequest: loanRequest == freezed
          ? _value.loanRequest
          : loanRequest as LoanRequest,
      amount: amount == freezed ? _value.amount : amount as double,
      time: time == freezed ? _value.time : time as String,
      reason: reason == freezed ? _value.reason : reason as String,
      reasons: reasons == freezed ? _value.reasons : reasons as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitLoanDetailsFailureOrSuccess: submitLoanDetailsFailureOrSuccess ==
              freezed
          ? _value.submitLoanDetailsFailureOrSuccess
          : submitLoanDetailsFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_LoanDetailsState implements _LoanDetailsState {
  const _$_LoanDetailsState(
      {this.data,
      this.loanRequest,
      @required this.amount,
      @required this.time,
      @required this.reason,
      @required this.reasons,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitLoanDetailsFailureOrSuccess})
      : assert(amount != null),
        assert(time != null),
        assert(reason != null),
        assert(reasons != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitLoanDetailsFailureOrSuccess != null);

  @override
  final UserDetailsRequest data;
  @override
  final LoanRequest loanRequest;
  @override
  final double amount;
  @override
  final String time;
  @override
  final String reason;
  @override
  final List<Value> reasons;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess;

  @override
  String toString() {
    return 'LoanDetailsState(data: $data, loanRequest: $loanRequest, amount: $amount, time: $time, reason: $reason, reasons: $reasons, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitLoanDetailsFailureOrSuccess: $submitLoanDetailsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoanDetailsState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.loanRequest, loanRequest) ||
                const DeepCollectionEquality()
                    .equals(other.loanRequest, loanRequest)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.reasons, reasons) ||
                const DeepCollectionEquality()
                    .equals(other.reasons, reasons)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitLoanDetailsFailureOrSuccess,
                    submitLoanDetailsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitLoanDetailsFailureOrSuccess,
                    submitLoanDetailsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(loanRequest) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(reasons) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitLoanDetailsFailureOrSuccess);

  @override
  _$LoanDetailsStateCopyWith<_LoanDetailsState> get copyWith =>
      __$LoanDetailsStateCopyWithImpl<_LoanDetailsState>(this, _$identity);
}

abstract class _LoanDetailsState implements LoanDetailsState {
  const factory _LoanDetailsState(
          {UserDetailsRequest data,
          LoanRequest loanRequest,
          @required
              double amount,
          @required
              String time,
          @required
              String reason,
          @required
              List<Value> reasons,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess}) =
      _$_LoanDetailsState;

  @override
  UserDetailsRequest get data;
  @override
  LoanRequest get loanRequest;
  @override
  double get amount;
  @override
  String get time;
  @override
  String get reason;
  @override
  List<Value> get reasons;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitLoanDetailsFailureOrSuccess;
  @override
  _$LoanDetailsStateCopyWith<_LoanDetailsState> get copyWith;
}
