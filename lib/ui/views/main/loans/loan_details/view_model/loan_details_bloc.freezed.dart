// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoanDetailsEventTearOff {
  const _$LoanDetailsEventTearOff();

// ignore: unused_element
  SubmitLoanDetailsForm submitLoanDetailsForm() {
    return const SubmitLoanDetailsForm();
  }
}

// ignore: unused_element
const $LoanDetailsEvent = _$LoanDetailsEventTearOff();

mixin _$LoanDetailsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitLoanDetailsForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
    @required Result orElse(),
  });
}

abstract class $LoanDetailsEventCopyWith<$Res> {
  factory $LoanDetailsEventCopyWith(
          LoanDetailsEvent value, $Res Function(LoanDetailsEvent) then) =
      _$LoanDetailsEventCopyWithImpl<$Res>;
}

class _$LoanDetailsEventCopyWithImpl<$Res>
    implements $LoanDetailsEventCopyWith<$Res> {
  _$LoanDetailsEventCopyWithImpl(this._value, this._then);

  final LoanDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(LoanDetailsEvent) _then;
}

abstract class $SubmitLoanDetailsFormCopyWith<$Res> {
  factory $SubmitLoanDetailsFormCopyWith(SubmitLoanDetailsForm value,
          $Res Function(SubmitLoanDetailsForm) then) =
      _$SubmitLoanDetailsFormCopyWithImpl<$Res>;
}

class _$SubmitLoanDetailsFormCopyWithImpl<$Res>
    extends _$LoanDetailsEventCopyWithImpl<$Res>
    implements $SubmitLoanDetailsFormCopyWith<$Res> {
  _$SubmitLoanDetailsFormCopyWithImpl(
      SubmitLoanDetailsForm _value, $Res Function(SubmitLoanDetailsForm) _then)
      : super(_value, (v) => _then(v as SubmitLoanDetailsForm));

  @override
  SubmitLoanDetailsForm get _value => super._value as SubmitLoanDetailsForm;
}

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
  }) {
    assert(submitLoanDetailsForm != null);
    return submitLoanDetailsForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitLoanDetailsForm(),
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
  }) {
    assert(submitLoanDetailsForm != null);
    return submitLoanDetailsForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitLoanDetailsForm(SubmitLoanDetailsForm value),
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

class _$LoanDetailsStateTearOff {
  const _$LoanDetailsStateTearOff();

// ignore: unused_element
  _LoanDetailsState call(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>>
              submitLoanDetailsFailureOrSuccess}) {
    return _LoanDetailsState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitLoanDetailsFailureOrSuccess: submitLoanDetailsFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $LoanDetailsState = _$LoanDetailsStateTearOff();

mixin _$LoanDetailsState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitLoanDetailsFailureOrSuccess;

  $LoanDetailsStateCopyWith<LoanDetailsState> get copyWith;
}

abstract class $LoanDetailsStateCopyWith<$Res> {
  factory $LoanDetailsStateCopyWith(
          LoanDetailsState value, $Res Function(LoanDetailsState) then) =
      _$LoanDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitLoanDetailsFailureOrSuccess});
}

class _$LoanDetailsStateCopyWithImpl<$Res>
    implements $LoanDetailsStateCopyWith<$Res> {
  _$LoanDetailsStateCopyWithImpl(this._value, this._then);

  final LoanDetailsState _value;
  // ignore: unused_field
  final $Res Function(LoanDetailsState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitLoanDetailsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitLoanDetailsFailureOrSuccess:
          submitLoanDetailsFailureOrSuccess == freezed
              ? _value.submitLoanDetailsFailureOrSuccess
              : submitLoanDetailsFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

abstract class _$LoanDetailsStateCopyWith<$Res>
    implements $LoanDetailsStateCopyWith<$Res> {
  factory _$LoanDetailsStateCopyWith(
          _LoanDetailsState value, $Res Function(_LoanDetailsState) then) =
      __$LoanDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitLoanDetailsFailureOrSuccess});
}

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
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitLoanDetailsFailureOrSuccess = freezed,
  }) {
    return _then(_LoanDetailsState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitLoanDetailsFailureOrSuccess:
          submitLoanDetailsFailureOrSuccess == freezed
              ? _value.submitLoanDetailsFailureOrSuccess
              : submitLoanDetailsFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

class _$_LoanDetailsState implements _LoanDetailsState {
  const _$_LoanDetailsState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitLoanDetailsFailureOrSuccess})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitLoanDetailsFailureOrSuccess != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ValueFailure, Unit>> submitLoanDetailsFailureOrSuccess;

  @override
  String toString() {
    return 'LoanDetailsState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitLoanDetailsFailureOrSuccess: $submitLoanDetailsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoanDetailsState &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitLoanDetailsFailureOrSuccess);

  @override
  _$LoanDetailsStateCopyWith<_LoanDetailsState> get copyWith =>
      __$LoanDetailsStateCopyWithImpl<_LoanDetailsState>(this, _$identity);
}

abstract class _LoanDetailsState implements LoanDetailsState {
  const factory _LoanDetailsState(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>>
              submitLoanDetailsFailureOrSuccess}) = _$_LoanDetailsState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitLoanDetailsFailureOrSuccess;
  @override
  _$LoanDetailsStateCopyWith<_LoanDetailsState> get copyWith;
}
