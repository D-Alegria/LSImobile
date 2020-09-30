// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edu_and_employ_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EduAndEmployEventTearOff {
  const _$EduAndEmployEventTearOff();

// ignore: unused_element
  SubmitEduAndEmploy submitEduAndEmploy() {
    return const SubmitEduAndEmploy();
  }
}

// ignore: unused_element
const $EduAndEmployEvent = _$EduAndEmployEventTearOff();

mixin _$EduAndEmployEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEduAndEmploy(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEduAndEmploy(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result orElse(),
  });
}

abstract class $EduAndEmployEventCopyWith<$Res> {
  factory $EduAndEmployEventCopyWith(
          EduAndEmployEvent value, $Res Function(EduAndEmployEvent) then) =
      _$EduAndEmployEventCopyWithImpl<$Res>;
}

class _$EduAndEmployEventCopyWithImpl<$Res>
    implements $EduAndEmployEventCopyWith<$Res> {
  _$EduAndEmployEventCopyWithImpl(this._value, this._then);

  final EduAndEmployEvent _value;
  // ignore: unused_field
  final $Res Function(EduAndEmployEvent) _then;
}

abstract class $SubmitEduAndEmployCopyWith<$Res> {
  factory $SubmitEduAndEmployCopyWith(
          SubmitEduAndEmploy value, $Res Function(SubmitEduAndEmploy) then) =
      _$SubmitEduAndEmployCopyWithImpl<$Res>;
}

class _$SubmitEduAndEmployCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $SubmitEduAndEmployCopyWith<$Res> {
  _$SubmitEduAndEmployCopyWithImpl(
      SubmitEduAndEmploy _value, $Res Function(SubmitEduAndEmploy) _then)
      : super(_value, (v) => _then(v as SubmitEduAndEmploy));

  @override
  SubmitEduAndEmploy get _value => super._value as SubmitEduAndEmploy;
}

class _$SubmitEduAndEmploy implements SubmitEduAndEmploy {
  const _$SubmitEduAndEmploy();

  @override
  String toString() {
    return 'EduAndEmployEvent.submitEduAndEmploy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitEduAndEmploy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEduAndEmploy(),
  }) {
    assert(submitEduAndEmploy != null);
    return submitEduAndEmploy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEduAndEmploy(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEduAndEmploy != null) {
      return submitEduAndEmploy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
  }) {
    assert(submitEduAndEmploy != null);
    return submitEduAndEmploy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEduAndEmploy != null) {
      return submitEduAndEmploy(this);
    }
    return orElse();
  }
}

abstract class SubmitEduAndEmploy implements EduAndEmployEvent {
  const factory SubmitEduAndEmploy() = _$SubmitEduAndEmploy;
}

class _$EduAndEmployStateTearOff {
  const _$EduAndEmployStateTearOff();

// ignore: unused_element
  _EduAndEmployState call(
      {@required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) {
    return _EduAndEmployState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $EduAndEmployState = _$EduAndEmployStateTearOff();

mixin _$EduAndEmployState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;

  $EduAndEmployStateCopyWith<EduAndEmployState> get copyWith;
}

abstract class $EduAndEmployStateCopyWith<$Res> {
  factory $EduAndEmployStateCopyWith(
          EduAndEmployState value, $Res Function(EduAndEmployState) then) =
      _$EduAndEmployStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

class _$EduAndEmployStateCopyWithImpl<$Res>
    implements $EduAndEmployStateCopyWith<$Res> {
  _$EduAndEmployStateCopyWithImpl(this._value, this._then);

  final EduAndEmployState _value;
  // ignore: unused_field
  final $Res Function(EduAndEmployState) _then;

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

abstract class _$EduAndEmployStateCopyWith<$Res>
    implements $EduAndEmployStateCopyWith<$Res> {
  factory _$EduAndEmployStateCopyWith(
          _EduAndEmployState value, $Res Function(_EduAndEmployState) then) =
      __$EduAndEmployStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> submitFailureOrSuccess});
}

class __$EduAndEmployStateCopyWithImpl<$Res>
    extends _$EduAndEmployStateCopyWithImpl<$Res>
    implements _$EduAndEmployStateCopyWith<$Res> {
  __$EduAndEmployStateCopyWithImpl(
      _EduAndEmployState _value, $Res Function(_EduAndEmployState) _then)
      : super(_value, (v) => _then(v as _EduAndEmployState));

  @override
  _EduAndEmployState get _value => super._value as _EduAndEmployState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_EduAndEmployState(
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

class _$_EduAndEmployState implements _EduAndEmployState {
  const _$_EduAndEmployState(
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
    return 'EduAndEmployState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EduAndEmployState &&
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
  _$EduAndEmployStateCopyWith<_EduAndEmployState> get copyWith =>
      __$EduAndEmployStateCopyWithImpl<_EduAndEmployState>(this, _$identity);
}

abstract class _EduAndEmployState implements EduAndEmployState {
  const factory _EduAndEmployState(
          {@required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<ValueFailure, Unit>> submitFailureOrSuccess}) =
      _$_EduAndEmployState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get submitFailureOrSuccess;
  @override
  _$EduAndEmployStateCopyWith<_EduAndEmployState> get copyWith;
}
