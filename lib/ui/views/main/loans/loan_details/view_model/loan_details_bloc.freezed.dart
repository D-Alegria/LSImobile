// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoanDetailsEventTearOff {
  const _$LoanDetailsEventTearOff();

// ignore: unused_element
  SubmitLoanDetailsForm submitLoanDetailsForm() {
    return const SubmitLoanDetailsForm();
  }

// ignore: unused_element
  AmountChanged amountChanged(String amount) {
    return AmountChanged(
      amount,
    );
  }

// ignore: unused_element
  TimeChanged timeChanged(String time) {
    return TimeChanged(
      time,
    );
  }

// ignore: unused_element
  ReasonChanged reasonChanged(String reason) {
    return ReasonChanged(
      reason,
    );
  }

// ignore: unused_element
  Init init(UserDetailsRequest data) {
    return Init(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoanDetailsEvent = _$LoanDetailsEventTearOff();

/// @nodoc
mixin _$LoanDetailsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoanDetailsEventCopyWith<$Res> {
  factory $LoanDetailsEventCopyWith(
          LoanDetailsEvent value, $Res Function(LoanDetailsEvent) then) =
      _$LoanDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoanDetailsEventCopyWithImpl<$Res>
    implements $LoanDetailsEventCopyWith<$Res> {
  _$LoanDetailsEventCopyWithImpl(this._value, this._then);

  final LoanDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(LoanDetailsEvent) _then;
}

/// @nodoc
abstract class $SubmitLoanDetailsFormCopyWith<$Res> {
  factory $SubmitLoanDetailsFormCopyWith(SubmitLoanDetailsForm value,
          $Res Function(SubmitLoanDetailsForm) then) =
      _$SubmitLoanDetailsFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitLoanDetailsFormCopyWithImpl<$Res>
    extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $SubmitLoanDetailsFormCopyWith<$Res> {
  _$SubmitLoanDetailsFormCopyWithImpl(
      SubmitLoanDetailsForm _value, $Res Function(SubmitLoanDetailsForm) _then)
      : super(_value, (v) => _then(v as SubmitLoanDetailsForm));

  @override
  SubmitLoanDetailsForm get _value => super._value as SubmitLoanDetailsForm;
}

/// @nodoc
class _$SubmitLoanDetailsForm implements SubmitLoanDetailsForm {
  const _$SubmitLoanDetailsForm();

  @override
  String toString() {
    return 'LoanDetailsEvent.submitLoanDetailsForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitLoanDetailsForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return submitLoanDetailsForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitLoanDetailsForm != null) {
      return submitLoanDetailsForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return submitLoanDetailsForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitLoanDetailsForm != null) {
      return submitLoanDetailsForm(this);
    }
    return orElse();
  }
}

abstract class SubmitLoanDetailsForm implements LoanDetailsEvent {
  const factory SubmitLoanDetailsForm() = _$SubmitLoanDetailsForm;
}

/// @nodoc
abstract class $AmountChangedCopyWith<$Res> {
  factory $AmountChangedCopyWith(
          AmountChanged value, $Res Function(AmountChanged) then) =
      _$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(
      AmountChanged _value, $Res Function(AmountChanged) _then)
      : super(_value, (v) => _then(v as AmountChanged));

  @override
  AmountChanged get _value => super._value as AmountChanged;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(AmountChanged(
      amount == freezed ? _value.amount : amount as String,
    ));
  }
}

/// @nodoc
class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amount) : assert(amount != null);

  @override
  final String amount;

  @override
  String toString() {
    return 'LoanDetailsEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmountChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements LoanDetailsEvent {
  const factory AmountChanged(String amount) = _$AmountChanged;

  String get amount;
  $AmountChangedCopyWith<AmountChanged> get copyWith;
}

/// @nodoc
abstract class $TimeChangedCopyWith<$Res> {
  factory $TimeChangedCopyWith(
          TimeChanged value, $Res Function(TimeChanged) then) =
      _$TimeChangedCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class _$TimeChangedCopyWithImpl<$Res>
    extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $TimeChangedCopyWith<$Res> {
  _$TimeChangedCopyWithImpl(
      TimeChanged _value, $Res Function(TimeChanged) _then)
      : super(_value, (v) => _then(v as TimeChanged));

  @override
  TimeChanged get _value => super._value as TimeChanged;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(TimeChanged(
      time == freezed ? _value.time : time as String,
    ));
  }
}

/// @nodoc
class _$TimeChanged implements TimeChanged {
  const _$TimeChanged(this.time) : assert(time != null);

  @override
  final String time;

  @override
  String toString() {
    return 'LoanDetailsEvent.timeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeChanged &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @override
  $TimeChangedCopyWith<TimeChanged> get copyWith =>
      _$TimeChangedCopyWithImpl<TimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return timeChanged(time);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return timeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(this);
    }
    return orElse();
  }
}

abstract class TimeChanged implements LoanDetailsEvent {
  const factory TimeChanged(String time) = _$TimeChanged;

  String get time;
  $TimeChangedCopyWith<TimeChanged> get copyWith;
}

/// @nodoc
abstract class $ReasonChangedCopyWith<$Res> {
  factory $ReasonChangedCopyWith(
          ReasonChanged value, $Res Function(ReasonChanged) then) =
      _$ReasonChangedCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$ReasonChangedCopyWithImpl<$Res>
    extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $ReasonChangedCopyWith<$Res> {
  _$ReasonChangedCopyWithImpl(
      ReasonChanged _value, $Res Function(ReasonChanged) _then)
      : super(_value, (v) => _then(v as ReasonChanged));

  @override
  ReasonChanged get _value => super._value as ReasonChanged;

  @override
  $Res call({
    Object reason = freezed,
  }) {
    return _then(ReasonChanged(
      reason == freezed ? _value.reason : reason as String,
    ));
  }
}

/// @nodoc
class _$ReasonChanged implements ReasonChanged {
  const _$ReasonChanged(this.reason) : assert(reason != null);

  @override
  final String reason;

  @override
  String toString() {
    return 'LoanDetailsEvent.reasonChanged(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReasonChanged &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @override
  $ReasonChangedCopyWith<ReasonChanged> get copyWith =>
      _$ReasonChangedCopyWithImpl<ReasonChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return reasonChanged(reason);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reasonChanged != null) {
      return reasonChanged(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return reasonChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reasonChanged != null) {
      return reasonChanged(this);
    }
    return orElse();
  }
}

abstract class ReasonChanged implements LoanDetailsEvent {
  const factory ReasonChanged(String reason) = _$ReasonChanged;

  String get reason;
  $ReasonChangedCopyWith<ReasonChanged> get copyWith;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest data});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Init(
      data == freezed ? _value.data : data as UserDetailsRequest,
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
}

/// @nodoc
class _$Init implements Init {
  const _$Init(this.data) : assert(data != null);

  @override
  final UserDetailsRequest data;

  @override
  String toString() {
    return 'LoanDetailsEvent.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
    @required Result amountChanged(String amount),
    @required Result timeChanged(String time),
    @required Result reasonChanged(String reason),
    @required Result init(UserDetailsRequest data),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    Result amountChanged(String amount),
    Result timeChanged(String time),
    Result reasonChanged(String reason),
    Result init(UserDetailsRequest data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result amountChanged(AmountChanged value),
    @required Result timeChanged(TimeChanged value),
    @required Result reasonChanged(ReasonChanged value),
    @required Result init(Init value),
  }) {
    assert(submitLoanDetailsForm != null);
    assert(amountChanged != null);
    assert(timeChanged != null);
    assert(reasonChanged != null);
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    Result amountChanged(AmountChanged value),
    Result timeChanged(TimeChanged value),
    Result reasonChanged(ReasonChanged value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements LoanDetailsEvent {
  const factory Init(UserDetailsRequest data) = _$Init;

  UserDetailsRequest get data;
  $InitCopyWith<Init> get copyWith;
}

/// @nodoc
class _$LoanDetailsStateTearOff {
  const _$LoanDetailsStateTearOff();

// ignore: unused_element
  _LoanDetailsState call(
      {UserDetailsRequest data,
      LoanRequest loanRequest,
      @required
          String amount,
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
  String get amount;
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
      String amount,
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
      amount: amount == freezed ? _value.amount : amount as String,
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
      String amount,
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
      amount: amount == freezed ? _value.amount : amount as String,
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
  final String amount;
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
              String amount,
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
  String get amount;
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
