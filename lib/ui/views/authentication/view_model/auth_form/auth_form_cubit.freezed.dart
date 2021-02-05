// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

// ignore: unused_element
  _AuthFormState call(
      {@required String fullName,
      @required String phoneNumber,
      @required String emailAddress,
      @required String password,
      @required String verificationCode,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> authFailureOrSuccess,
      @required Option<Either<Glitch, Unit>> verifyFailureOrSuccess}) {
    return _AuthFormState(
      fullName: fullName,
      phoneNumber: phoneNumber,
      emailAddress: emailAddress,
      password: password,
      verificationCode: verificationCode,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
      verifyFailureOrSuccess: verifyFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormState = _$AuthFormStateTearOff();

/// @nodoc
mixin _$AuthFormState {
  String get fullName;
  String get phoneNumber;
  String get emailAddress;
  String get password;
  String get verificationCode;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get authFailureOrSuccess;
  Option<Either<Glitch, Unit>> get verifyFailureOrSuccess;

  $AuthFormStateCopyWith<AuthFormState> get copyWith;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String phoneNumber,
      String emailAddress,
      String password,
      String verificationCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> authFailureOrSuccess,
      Option<Either<Glitch, Unit>> verifyFailureOrSuccess});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object verificationCode = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<Glitch, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$AuthFormStateCopyWith(
          _AuthFormState value, $Res Function(_AuthFormState) then) =
      __$AuthFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String phoneNumber,
      String emailAddress,
      String password,
      String verificationCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> authFailureOrSuccess,
      Option<Either<Glitch, Unit>> verifyFailureOrSuccess});
}

/// @nodoc
class __$AuthFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res>
    implements _$AuthFormStateCopyWith<$Res> {
  __$AuthFormStateCopyWithImpl(
      _AuthFormState _value, $Res Function(_AuthFormState) _then)
      : super(_value, (v) => _then(v as _AuthFormState));

  @override
  _AuthFormState get _value => super._value as _AuthFormState;

  @override
  $Res call({
    Object fullName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object verificationCode = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
  }) {
    return _then(_AuthFormState(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<Glitch, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {@required this.fullName,
      @required this.phoneNumber,
      @required this.emailAddress,
      @required this.password,
      @required this.verificationCode,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess,
      @required this.verifyFailureOrSuccess})
      : assert(fullName != null),
        assert(phoneNumber != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(verificationCode != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null),
        assert(verifyFailureOrSuccess != null);

  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String verificationCode;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> authFailureOrSuccess;
  @override
  final Option<Either<Glitch, Unit>> verifyFailureOrSuccess;

  @override
  String toString() {
    return 'AuthFormState(fullName: $fullName, phoneNumber: $phoneNumber, emailAddress: $emailAddress, password: $password, verificationCode: $verificationCode, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccess, authFailureOrSuccess)) &&
            (identical(other.verifyFailureOrSuccess, verifyFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.verifyFailureOrSuccess, verifyFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess) ^
      const DeepCollectionEquality().hash(verifyFailureOrSuccess);

  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      __$AuthFormStateCopyWithImpl<_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
          {@required String fullName,
          @required String phoneNumber,
          @required String emailAddress,
          @required String password,
          @required String verificationCode,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> authFailureOrSuccess,
          @required Option<Either<Glitch, Unit>> verifyFailureOrSuccess}) =
      _$_AuthFormState;

  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get verificationCode;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get authFailureOrSuccess;
  @override
  Option<Either<Glitch, Unit>> get verifyFailureOrSuccess;
  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith;
}
