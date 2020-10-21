// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'residence_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResidenceEventTearOff {
  const _$ResidenceEventTearOff();

// ignore: unused_element
  SubmitResidenceForm submitResidenceForm() {
    return const SubmitResidenceForm();
  }
}

/// @nodoc
// ignore: unused_element
const $ResidenceEvent = _$ResidenceEventTearOff();

/// @nodoc
mixin _$ResidenceEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitResidenceForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitResidenceForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitResidenceForm(SubmitResidenceForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitResidenceForm(SubmitResidenceForm value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResidenceEventCopyWith<$Res> {
  factory $ResidenceEventCopyWith(
          ResidenceEvent value, $Res Function(ResidenceEvent) then) =
      _$ResidenceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResidenceEventCopyWithImpl<$Res>
    implements $ResidenceEventCopyWith<$Res> {
  _$ResidenceEventCopyWithImpl(this._value, this._then);

  final ResidenceEvent _value;
  // ignore: unused_field
  final $Res Function(ResidenceEvent) _then;
}

/// @nodoc
abstract class $SubmitResidenceFormCopyWith<$Res> {
  factory $SubmitResidenceFormCopyWith(
          SubmitResidenceForm value, $Res Function(SubmitResidenceForm) then) =
      _$SubmitResidenceFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitResidenceFormCopyWithImpl<$Res>
    extends _$ResidenceEventCopyWithImpl<$Res>
    implements $SubmitResidenceFormCopyWith<$Res> {
  _$SubmitResidenceFormCopyWithImpl(
      SubmitResidenceForm _value, $Res Function(SubmitResidenceForm) _then)
      : super(_value, (v) => _then(v as SubmitResidenceForm));

  @override
  SubmitResidenceForm get _value => super._value as SubmitResidenceForm;
}

/// @nodoc
class _$SubmitResidenceForm implements SubmitResidenceForm {
  const _$SubmitResidenceForm();

  @override
  String toString() {
    return 'ResidenceEvent.submitResidenceForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitResidenceForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitResidenceForm(),
  }) {
    assert(submitResidenceForm != null);
    return submitResidenceForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitResidenceForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitResidenceForm != null) {
      return submitResidenceForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitResidenceForm(SubmitResidenceForm value),
  }) {
    assert(submitResidenceForm != null);
    return submitResidenceForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitResidenceForm(SubmitResidenceForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitResidenceForm != null) {
      return submitResidenceForm(this);
    }
    return orElse();
  }
}

abstract class SubmitResidenceForm implements ResidenceEvent {
  const factory SubmitResidenceForm() = _$SubmitResidenceForm;
}

/// @nodoc
class _$ResidenceStateTearOff {
  const _$ResidenceStateTearOff();

// ignore: unused_element
  _ResidenceState call(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>> submitResidenceFailureOrSuccess}) {
    return _ResidenceState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitResidenceFailureOrSuccess: submitResidenceFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResidenceState = _$ResidenceStateTearOff();

/// @nodoc
mixin _$ResidenceState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitResidenceFailureOrSuccess;

  $ResidenceStateCopyWith<ResidenceState> get copyWith;
}

/// @nodoc
abstract class $ResidenceStateCopyWith<$Res> {
  factory $ResidenceStateCopyWith(
          ResidenceState value, $Res Function(ResidenceState) then) =
      _$ResidenceStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitResidenceFailureOrSuccess});
}

/// @nodoc
class _$ResidenceStateCopyWithImpl<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  _$ResidenceStateCopyWithImpl(this._value, this._then);

  final ResidenceState _value;
  // ignore: unused_field
  final $Res Function(ResidenceState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ResidenceStateCopyWith<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  factory _$ResidenceStateCopyWith(
          _ResidenceState value, $Res Function(_ResidenceState) then) =
      __$ResidenceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitResidenceFailureOrSuccess});
}

/// @nodoc
class __$ResidenceStateCopyWithImpl<$Res>
    extends _$ResidenceStateCopyWithImpl<$Res>
    implements _$ResidenceStateCopyWith<$Res> {
  __$ResidenceStateCopyWithImpl(
      _ResidenceState _value, $Res Function(_ResidenceState) _then)
      : super(_value, (v) => _then(v as _ResidenceState));

  @override
  _ResidenceState get _value => super._value as _ResidenceState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_ResidenceState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess
                  as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ResidenceState implements _ResidenceState {
  const _$_ResidenceState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitResidenceFailureOrSuccess})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitResidenceFailureOrSuccess != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ValueFailure, Unit>> submitResidenceFailureOrSuccess;

  @override
  String toString() {
    return 'ResidenceState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitResidenceFailureOrSuccess: $submitResidenceFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResidenceState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitResidenceFailureOrSuccess,
                    submitResidenceFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitResidenceFailureOrSuccess,
                    submitResidenceFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitResidenceFailureOrSuccess);

  @override
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith =>
      __$ResidenceStateCopyWithImpl<_ResidenceState>(this, _$identity);
}

abstract class _ResidenceState implements ResidenceState {
  const factory _ResidenceState(
      {@required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ValueFailure, Unit>>
              submitResidenceFailureOrSuccess}) = _$_ResidenceState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitResidenceFailureOrSuccess;
  @override
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith;
}
