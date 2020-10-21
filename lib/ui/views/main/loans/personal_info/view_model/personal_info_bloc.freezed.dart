// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'personal_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PersonalInfoEventTearOff {
  const _$PersonalInfoEventTearOff();

// ignore: unused_element
  SubmitPersonalInfo submitPersonalInfo() {
    return const SubmitPersonalInfo();
  }
}

/// @nodoc
// ignore: unused_element
const $PersonalInfoEvent = _$PersonalInfoEventTearOff();

/// @nodoc
mixin _$PersonalInfoEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitPersonalInfo(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitPersonalInfo(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PersonalInfoEventCopyWith<$Res> {
  factory $PersonalInfoEventCopyWith(
          PersonalInfoEvent value, $Res Function(PersonalInfoEvent) then) =
      _$PersonalInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonalInfoEventCopyWithImpl<$Res>
    implements $PersonalInfoEventCopyWith<$Res> {
  _$PersonalInfoEventCopyWithImpl(this._value, this._then);

  final PersonalInfoEvent _value;
  // ignore: unused_field
  final $Res Function(PersonalInfoEvent) _then;
}

/// @nodoc
abstract class $SubmitPersonalInfoCopyWith<$Res> {
  factory $SubmitPersonalInfoCopyWith(
          SubmitPersonalInfo value, $Res Function(SubmitPersonalInfo) then) =
      _$SubmitPersonalInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitPersonalInfoCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res>
    implements $SubmitPersonalInfoCopyWith<$Res> {
  _$SubmitPersonalInfoCopyWithImpl(
      SubmitPersonalInfo _value, $Res Function(SubmitPersonalInfo) _then)
      : super(_value, (v) => _then(v as SubmitPersonalInfo));

  @override
  SubmitPersonalInfo get _value => super._value as SubmitPersonalInfo;
}

/// @nodoc
class _$SubmitPersonalInfo implements SubmitPersonalInfo {
  const _$SubmitPersonalInfo();

  @override
  String toString() {
    return 'PersonalInfoEvent.submitPersonalInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitPersonalInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitPersonalInfo(),
  }) {
    assert(submitPersonalInfo != null);
    return submitPersonalInfo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitPersonalInfo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitPersonalInfo != null) {
      return submitPersonalInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(submitPersonalInfo != null);
    return submitPersonalInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitPersonalInfo != null) {
      return submitPersonalInfo(this);
    }
    return orElse();
  }
}

abstract class SubmitPersonalInfo implements PersonalInfoEvent {
  const factory SubmitPersonalInfo() = _$SubmitPersonalInfo;
}

/// @nodoc
class _$PersonalInfoStateTearOff {
  const _$PersonalInfoStateTearOff();

// ignore: unused_element
  _PersonalInfoState call(
      {@required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) {
    return _PersonalInfoState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PersonalInfoState = _$PersonalInfoStateTearOff();

/// @nodoc
mixin _$PersonalInfoState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;

  $PersonalInfoStateCopyWith<PersonalInfoState> get copyWith;
}

/// @nodoc
abstract class $PersonalInfoStateCopyWith<$Res> {
  factory $PersonalInfoStateCopyWith(
          PersonalInfoState value, $Res Function(PersonalInfoState) then) =
      _$PersonalInfoStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._value, this._then);

  final PersonalInfoState _value;
  // ignore: unused_field
  final $Res Function(PersonalInfoState) _then;

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
abstract class _$PersonalInfoStateCopyWith<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  factory _$PersonalInfoStateCopyWith(
          _PersonalInfoState value, $Res Function(_PersonalInfoState) then) =
      __$PersonalInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$PersonalInfoStateCopyWithImpl<$Res>
    extends _$PersonalInfoStateCopyWithImpl<$Res>
    implements _$PersonalInfoStateCopyWith<$Res> {
  __$PersonalInfoStateCopyWithImpl(
      _PersonalInfoState _value, $Res Function(_PersonalInfoState) _then)
      : super(_value, (v) => _then(v as _PersonalInfoState));

  @override
  _PersonalInfoState get _value => super._value as _PersonalInfoState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_PersonalInfoState(
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
class _$_PersonalInfoState implements _PersonalInfoState {
  const _$_PersonalInfoState(
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
    return 'PersonalInfoState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalInfoState &&
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
  _$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith =>
      __$PersonalInfoStateCopyWithImpl<_PersonalInfoState>(this, _$identity);
}

abstract class _PersonalInfoState implements PersonalInfoState {
  const factory _PersonalInfoState(
          {@required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) =
      _$_PersonalInfoState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;
  @override
  _$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith;
}
