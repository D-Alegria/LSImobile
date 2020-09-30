// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountInfoEventTearOff {
  const _$AccountInfoEventTearOff();

// ignore: unused_element
  SubmitAccountInfoForm submitAccountInfoForm() {
    return const SubmitAccountInfoForm();
  }
}

// ignore: unused_element
const $AccountInfoEvent = _$AccountInfoEventTearOff();

mixin _$AccountInfoEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitAccountInfoForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitAccountInfoForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result orElse(),
  });
}

abstract class $AccountInfoEventCopyWith<$Res> {
  factory $AccountInfoEventCopyWith(
          AccountInfoEvent value, $Res Function(AccountInfoEvent) then) =
      _$AccountInfoEventCopyWithImpl<$Res>;
}

class _$AccountInfoEventCopyWithImpl<$Res>
    implements $AccountInfoEventCopyWith<$Res> {
  _$AccountInfoEventCopyWithImpl(this._value, this._then);

  final AccountInfoEvent _value;
  // ignore: unused_field
  final $Res Function(AccountInfoEvent) _then;
}

abstract class $SubmitAccountInfoFormCopyWith<$Res> {
  factory $SubmitAccountInfoFormCopyWith(SubmitAccountInfoForm value,
          $Res Function(SubmitAccountInfoForm) then) =
      _$SubmitAccountInfoFormCopyWithImpl<$Res>;
}

class _$SubmitAccountInfoFormCopyWithImpl<$Res>
    extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $SubmitAccountInfoFormCopyWith<$Res> {
  _$SubmitAccountInfoFormCopyWithImpl(
      SubmitAccountInfoForm _value, $Res Function(SubmitAccountInfoForm) _then)
      : super(_value, (v) => _then(v as SubmitAccountInfoForm));

  @override
  SubmitAccountInfoForm get _value => super._value as SubmitAccountInfoForm;
}

class _$SubmitAccountInfoForm implements SubmitAccountInfoForm {
  const _$SubmitAccountInfoForm();

  @override
  String toString() {
    return 'AccountInfoEvent.submitAccountInfoForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitAccountInfoForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitAccountInfoForm(),
  }) {
    assert(submitAccountInfoForm != null);
    return submitAccountInfoForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitAccountInfoForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitAccountInfoForm != null) {
      return submitAccountInfoForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
  }) {
    assert(submitAccountInfoForm != null);
    return submitAccountInfoForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitAccountInfoForm != null) {
      return submitAccountInfoForm(this);
    }
    return orElse();
  }
}

abstract class SubmitAccountInfoForm implements AccountInfoEvent {
  const factory SubmitAccountInfoForm() = _$SubmitAccountInfoForm;
}

class _$AccountInfoStateTearOff {
  const _$AccountInfoStateTearOff();

// ignore: unused_element
  _AccountInfoState call(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>>
              submitAccountInfoFailureOrSuccess}) {
    return _AccountInfoState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitAccountInfoFailureOrSuccess: submitAccountInfoFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $AccountInfoState = _$AccountInfoStateTearOff();

mixin _$AccountInfoState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitAccountInfoFailureOrSuccess;

  $AccountInfoStateCopyWith<AccountInfoState> get copyWith;
}

abstract class $AccountInfoStateCopyWith<$Res> {
  factory $AccountInfoStateCopyWith(
          AccountInfoState value, $Res Function(AccountInfoState) then) =
      _$AccountInfoStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitAccountInfoFailureOrSuccess});
}

class _$AccountInfoStateCopyWithImpl<$Res>
    implements $AccountInfoStateCopyWith<$Res> {
  _$AccountInfoStateCopyWithImpl(this._value, this._then);

  final AccountInfoState _value;
  // ignore: unused_field
  final $Res Function(AccountInfoState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitAccountInfoFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitAccountInfoFailureOrSuccess:
          submitAccountInfoFailureOrSuccess == freezed
              ? _value.submitAccountInfoFailureOrSuccess
              : submitAccountInfoFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

abstract class _$AccountInfoStateCopyWith<$Res>
    implements $AccountInfoStateCopyWith<$Res> {
  factory _$AccountInfoStateCopyWith(
          _AccountInfoState value, $Res Function(_AccountInfoState) then) =
      __$AccountInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitAccountInfoFailureOrSuccess});
}

class __$AccountInfoStateCopyWithImpl<$Res>
    extends _$AccountInfoStateCopyWithImpl<$Res>
    implements _$AccountInfoStateCopyWith<$Res> {
  __$AccountInfoStateCopyWithImpl(
      _AccountInfoState _value, $Res Function(_AccountInfoState) _then)
      : super(_value, (v) => _then(v as _AccountInfoState));

  @override
  _AccountInfoState get _value => super._value as _AccountInfoState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitAccountInfoFailureOrSuccess = freezed,
  }) {
    return _then(_AccountInfoState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitAccountInfoFailureOrSuccess:
          submitAccountInfoFailureOrSuccess == freezed
              ? _value.submitAccountInfoFailureOrSuccess
              : submitAccountInfoFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

class _$_AccountInfoState implements _AccountInfoState {
  const _$_AccountInfoState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitAccountInfoFailureOrSuccess})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitAccountInfoFailureOrSuccess != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ValueFailure, Unit>> submitAccountInfoFailureOrSuccess;

  @override
  String toString() {
    return 'AccountInfoState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitAccountInfoFailureOrSuccess: $submitAccountInfoFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountInfoState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitAccountInfoFailureOrSuccess,
                    submitAccountInfoFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitAccountInfoFailureOrSuccess,
                    submitAccountInfoFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitAccountInfoFailureOrSuccess);

  @override
  _$AccountInfoStateCopyWith<_AccountInfoState> get copyWith =>
      __$AccountInfoStateCopyWithImpl<_AccountInfoState>(this, _$identity);
}

abstract class _AccountInfoState implements AccountInfoState {
  const factory _AccountInfoState(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>>
              submitAccountInfoFailureOrSuccess}) = _$_AccountInfoState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitAccountInfoFailureOrSuccess;
  @override
  _$AccountInfoStateCopyWith<_AccountInfoState> get copyWith;
}
