// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

// ignore: unused_element
  RegisterUser registerUser() {
    return RegisterUser();
  }

// ignore: unused_element
  VerifyUser verifyUser() {
    return VerifyUser();
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerUser(),
    @required Result verifyUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerUser(),
    Result verifyUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
}

class _$RegisterUserCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;
}

class _$RegisterUser implements RegisterUser {
  _$RegisterUser();

  @override
  String toString() {
    return 'RegisterEvent.registerUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(registerUser != null);
    assert(verifyUser != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerUser(),
    Result verifyUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(registerUser != null);
    assert(verifyUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements RegisterEvent {
  factory RegisterUser() = _$RegisterUser;
}

abstract class $VerifyUserCopyWith<$Res> {
  factory $VerifyUserCopyWith(
          VerifyUser value, $Res Function(VerifyUser) then) =
      _$VerifyUserCopyWithImpl<$Res>;
}

class _$VerifyUserCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $VerifyUserCopyWith<$Res> {
  _$VerifyUserCopyWithImpl(VerifyUser _value, $Res Function(VerifyUser) _then)
      : super(_value, (v) => _then(v as VerifyUser));

  @override
  VerifyUser get _value => super._value as VerifyUser;
}

class _$VerifyUser implements VerifyUser {
  _$VerifyUser();

  @override
  String toString() {
    return 'RegisterEvent.verifyUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(registerUser != null);
    assert(verifyUser != null);
    return verifyUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerUser(),
    Result verifyUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyUser != null) {
      return verifyUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(registerUser != null);
    assert(verifyUser != null);
    return verifyUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyUser != null) {
      return verifyUser(this);
    }
    return orElse();
  }
}

abstract class VerifyUser implements RegisterEvent {
  factory VerifyUser() = _$VerifyUser;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

// ignore: unused_element
  _RegisterState call(
      {@required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ValueFailure, Unit>> registerFailureOrSuccess,
      @required Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess}) {
    return _RegisterState(
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      registerFailureOrSuccess: registerFailureOrSuccess,
      verifyFailureOrSuccess: verifyFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ValueFailure, Unit>> get registerFailureOrSuccess;
  Option<Either<ValueFailure, Unit>> get verifyFailureOrSuccess;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> registerFailureOrSuccess,
      Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccess: registerFailureOrSuccess == freezed
          ? _value.registerFailureOrSuccess
          : registerFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ValueFailure, Unit>> registerFailureOrSuccess,
      Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
  }) {
    return _then(_RegisterState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccess: registerFailureOrSuccess == freezed
          ? _value.registerFailureOrSuccess
          : registerFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<ValueFailure, Unit>>,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {@required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.registerFailureOrSuccess,
      @required this.verifyFailureOrSuccess})
      : assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(registerFailureOrSuccess != null),
        assert(verifyFailureOrSuccess != null);

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ValueFailure, Unit>> registerFailureOrSuccess;
  @override
  final Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess;

  @override
  String toString() {
    return 'RegisterState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, registerFailureOrSuccess: $registerFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(
                    other.registerFailureOrSuccess, registerFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.registerFailureOrSuccess,
                    registerFailureOrSuccess)) &&
            (identical(other.verifyFailureOrSuccess, verifyFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.verifyFailureOrSuccess, verifyFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(registerFailureOrSuccess) ^
      const DeepCollectionEquality().hash(verifyFailureOrSuccess);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {@required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<ValueFailure, Unit>> registerFailureOrSuccess,
          @required
              Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess}) =
      _$_RegisterState;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ValueFailure, Unit>> get registerFailureOrSuccess;
  @override
  Option<Either<ValueFailure, Unit>> get verifyFailureOrSuccess;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
