// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'emergency_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EmergencyContactEventTearOff {
  const _$EmergencyContactEventTearOff();

// ignore: unused_element
  SubmitEmergencyContactForm submitEmergencyContactForm() {
    return const SubmitEmergencyContactForm();
  }
}

/// @nodoc
// ignore: unused_element
const $EmergencyContactEvent = _$EmergencyContactEventTearOff();

/// @nodoc
mixin _$EmergencyContactEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEmergencyContactForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEmergencyContactForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EmergencyContactEventCopyWith<$Res> {
  factory $EmergencyContactEventCopyWith(EmergencyContactEvent value,
          $Res Function(EmergencyContactEvent) then) =
      _$EmergencyContactEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmergencyContactEventCopyWithImpl<$Res>
    implements $EmergencyContactEventCopyWith<$Res> {
  _$EmergencyContactEventCopyWithImpl(this._value, this._then);

  final EmergencyContactEvent _value;
  // ignore: unused_field
  final $Res Function(EmergencyContactEvent) _then;
}

/// @nodoc
abstract class $SubmitEmergencyContactFormCopyWith<$Res> {
  factory $SubmitEmergencyContactFormCopyWith(SubmitEmergencyContactForm value,
          $Res Function(SubmitEmergencyContactForm) then) =
      _$SubmitEmergencyContactFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitEmergencyContactFormCopyWithImpl<$Res>
    extends _$EmergencyContactEventCopyWithImpl<$Res>
    implements $SubmitEmergencyContactFormCopyWith<$Res> {
  _$SubmitEmergencyContactFormCopyWithImpl(SubmitEmergencyContactForm _value,
      $Res Function(SubmitEmergencyContactForm) _then)
      : super(_value, (v) => _then(v as SubmitEmergencyContactForm));

  @override
  SubmitEmergencyContactForm get _value =>
      super._value as SubmitEmergencyContactForm;
}

/// @nodoc
class _$SubmitEmergencyContactForm implements SubmitEmergencyContactForm {
  const _$SubmitEmergencyContactForm();

  @override
  String toString() {
    return 'EmergencyContactEvent.submitEmergencyContactForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitEmergencyContactForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEmergencyContactForm(),
  }) {
    assert(submitEmergencyContactForm != null);
    return submitEmergencyContactForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEmergencyContactForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmergencyContactForm != null) {
      return submitEmergencyContactForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(submitEmergencyContactForm != null);
    return submitEmergencyContactForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmergencyContactForm != null) {
      return submitEmergencyContactForm(this);
    }
    return orElse();
  }
}

abstract class SubmitEmergencyContactForm implements EmergencyContactEvent {
  const factory SubmitEmergencyContactForm() = _$SubmitEmergencyContactForm;
}

/// @nodoc
class _$EmergencyContactStateTearOff {
  const _$EmergencyContactStateTearOff();

// ignore: unused_element
  _EmergencyContactState call(
      {@required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) {
    return _EmergencyContactState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EmergencyContactState = _$EmergencyContactStateTearOff();

/// @nodoc
mixin _$EmergencyContactState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;

  $EmergencyContactStateCopyWith<EmergencyContactState> get copyWith;
}

/// @nodoc
abstract class $EmergencyContactStateCopyWith<$Res> {
  factory $EmergencyContactStateCopyWith(EmergencyContactState value,
          $Res Function(EmergencyContactState) then) =
      _$EmergencyContactStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$EmergencyContactStateCopyWithImpl<$Res>
    implements $EmergencyContactStateCopyWith<$Res> {
  _$EmergencyContactStateCopyWithImpl(this._value, this._then);

  final EmergencyContactState _value;
  // ignore: unused_field
  final $Res Function(EmergencyContactState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EmergencyContactStateCopyWith<$Res>
    implements $EmergencyContactStateCopyWith<$Res> {
  factory _$EmergencyContactStateCopyWith(_EmergencyContactState value,
          $Res Function(_EmergencyContactState) then) =
      __$EmergencyContactStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$EmergencyContactStateCopyWithImpl<$Res>
    extends _$EmergencyContactStateCopyWithImpl<$Res>
    implements _$EmergencyContactStateCopyWith<$Res> {
  __$EmergencyContactStateCopyWithImpl(_EmergencyContactState _value,
      $Res Function(_EmergencyContactState) _then)
      : super(_value, (v) => _then(v as _EmergencyContactState));

  @override
  _EmergencyContactState get _value => super._value as _EmergencyContactState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_EmergencyContactState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EmergencyContactState implements _EmergencyContactState {
  const _$_EmergencyContactState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ValueFailure, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'EmergencyContactState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmergencyContactState &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$EmergencyContactStateCopyWith<_EmergencyContactState> get copyWith =>
      __$EmergencyContactStateCopyWithImpl<_EmergencyContactState>(
          this, _$identity);
}

abstract class _EmergencyContactState implements EmergencyContactState {
  const factory _EmergencyContactState(
          {@required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) =
      _$_EmergencyContactState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;
  @override
  _$EmergencyContactStateCopyWith<_EmergencyContactState> get copyWith;
}
