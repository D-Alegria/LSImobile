// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFormEventTearOff {
  const _$AuthFormEventTearOff();

// ignore: unused_element
  Init init() {
    return Init();
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstName) {
    return FirstNameChanged(
      firstName,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastName) {
    return LastNameChanged(
      lastName,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  VerificationCodeChanged verificationCodeChanged(String verificationCode) {
    return VerificationCodeChanged(
      verificationCode,
    );
  }

// ignore: unused_element
  LoginUser loginUser() {
    return LoginUser();
  }

// ignore: unused_element
  RegisterUser registerUser() {
    return RegisterUser();
  }

// ignore: unused_element
  VerifyUser verifyUser() {
    return VerifyUser();
  }

// ignore: unused_element
  ResendOTP resendOTP() {
    return ResendOTP();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormEvent = _$AuthFormEventTearOff();

/// @nodoc
mixin _$AuthFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc
class _$Init implements Init {
  _$Init();

  @override
  String toString() {
    return 'AuthFormEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AuthFormEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthFormEvent {
  factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(FirstNameChanged(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'AuthFormEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements AuthFormEvent {
  factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(LastNameChanged(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  _$LastNameChanged(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'AuthFormEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements AuthFormEvent {
  factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthFormEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements AuthFormEvent {
  factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthFormEvent {
  factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $VerificationCodeChangedCopyWith<$Res> {
  factory $VerificationCodeChangedCopyWith(VerificationCodeChanged value,
          $Res Function(VerificationCodeChanged) then) =
      _$VerificationCodeChangedCopyWithImpl<$Res>;
  $Res call({String verificationCode});
}

/// @nodoc
class _$VerificationCodeChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $VerificationCodeChangedCopyWith<$Res> {
  _$VerificationCodeChangedCopyWithImpl(VerificationCodeChanged _value,
      $Res Function(VerificationCodeChanged) _then)
      : super(_value, (v) => _then(v as VerificationCodeChanged));

  @override
  VerificationCodeChanged get _value => super._value as VerificationCodeChanged;

  @override
  $Res call({
    Object verificationCode = freezed,
  }) {
    return _then(VerificationCodeChanged(
      verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as String,
    ));
  }
}

/// @nodoc
class _$VerificationCodeChanged implements VerificationCodeChanged {
  _$VerificationCodeChanged(this.verificationCode)
      : assert(verificationCode != null);

  @override
  final String verificationCode;

  @override
  String toString() {
    return 'AuthFormEvent.verificationCodeChanged(verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerificationCodeChanged &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationCode);

  @override
  $VerificationCodeChangedCopyWith<VerificationCodeChanged> get copyWith =>
      _$VerificationCodeChangedCopyWithImpl<VerificationCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return verificationCodeChanged(verificationCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return verificationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class VerificationCodeChanged implements AuthFormEvent {
  factory VerificationCodeChanged(String verificationCode) =
      _$VerificationCodeChanged;

  String get verificationCode;
  $VerificationCodeChangedCopyWith<VerificationCodeChanged> get copyWith;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(LoginUser _value, $Res Function(LoginUser) _then)
      : super(_value, (v) => _then(v as LoginUser));

  @override
  LoginUser get _value => super._value as LoginUser;
}

/// @nodoc
class _$LoginUser implements LoginUser {
  _$LoginUser();

  @override
  String toString() {
    return 'AuthFormEvent.loginUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return loginUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginUser != null) {
      return loginUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUser implements AuthFormEvent {
  factory LoginUser() = _$LoginUser;
}

/// @nodoc
abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterUserCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;
}

/// @nodoc
class _$RegisterUser implements RegisterUser {
  _$RegisterUser();

  @override
  String toString() {
    return 'AuthFormEvent.registerUser()';
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
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
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
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements AuthFormEvent {
  factory RegisterUser() = _$RegisterUser;
}

/// @nodoc
abstract class $VerifyUserCopyWith<$Res> {
  factory $VerifyUserCopyWith(
          VerifyUser value, $Res Function(VerifyUser) then) =
      _$VerifyUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyUserCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $VerifyUserCopyWith<$Res> {
  _$VerifyUserCopyWithImpl(VerifyUser _value, $Res Function(VerifyUser) _then)
      : super(_value, (v) => _then(v as VerifyUser));

  @override
  VerifyUser get _value => super._value as VerifyUser;
}

/// @nodoc
class _$VerifyUser implements VerifyUser {
  _$VerifyUser();

  @override
  String toString() {
    return 'AuthFormEvent.verifyUser()';
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
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return verifyUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
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
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return verifyUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyUser != null) {
      return verifyUser(this);
    }
    return orElse();
  }
}

abstract class VerifyUser implements AuthFormEvent {
  factory VerifyUser() = _$VerifyUser;
}

/// @nodoc
abstract class $ResendOTPCopyWith<$Res> {
  factory $ResendOTPCopyWith(ResendOTP value, $Res Function(ResendOTP) then) =
      _$ResendOTPCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendOTPCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $ResendOTPCopyWith<$Res> {
  _$ResendOTPCopyWithImpl(ResendOTP _value, $Res Function(ResendOTP) _then)
      : super(_value, (v) => _then(v as ResendOTP));

  @override
  ResendOTP get _value => super._value as ResendOTP;
}

/// @nodoc
class _$ResendOTP implements ResendOTP {
  _$ResendOTP();

  @override
  String toString() {
    return 'AuthFormEvent.resendOTP()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendOTP);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result verificationCodeChanged(String verificationCode),
    @required Result loginUser(),
    @required Result registerUser(),
    @required Result verifyUser(),
    @required Result resendOTP(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return resendOTP();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result verificationCodeChanged(String verificationCode),
    Result loginUser(),
    Result registerUser(),
    Result verifyUser(),
    Result resendOTP(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOTP != null) {
      return resendOTP();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result verificationCodeChanged(VerificationCodeChanged value),
    @required Result loginUser(LoginUser value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
    @required Result resendOTP(ResendOTP value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(verificationCodeChanged != null);
    assert(loginUser != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    assert(resendOTP != null);
    return resendOTP(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result verificationCodeChanged(VerificationCodeChanged value),
    Result loginUser(LoginUser value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    Result resendOTP(ResendOTP value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOTP != null) {
      return resendOTP(this);
    }
    return orElse();
  }
}

abstract class ResendOTP implements AuthFormEvent {
  factory ResendOTP() = _$ResendOTP;
}

/// @nodoc
class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

// ignore: unused_element
  _AuthFormState call(
      {@required String firstName,
      @required String lastName,
      @required String phoneNumber,
      @required String emailAddress,
      @required String password,
      @required String verificationCode,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthGlitch, Unit>> authFailureOrSuccess}) {
    return _AuthFormState(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      emailAddress: emailAddress,
      password: password,
      verificationCode: verificationCode,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormState = _$AuthFormStateTearOff();

/// @nodoc
mixin _$AuthFormState {
  String get firstName;
  String get lastName;
  String get phoneNumber;
  String get emailAddress;
  String get password;
  String get verificationCode;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthGlitch, Unit>> get authFailureOrSuccess;

  $AuthFormStateCopyWith<AuthFormState> get copyWith;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String phoneNumber,
      String emailAddress,
      String password,
      String verificationCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthGlitch, Unit>> authFailureOrSuccess});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object verificationCode = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
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
          : authFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
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
      {String firstName,
      String lastName,
      String phoneNumber,
      String emailAddress,
      String password,
      String verificationCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthGlitch, Unit>> authFailureOrSuccess});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object verificationCode = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_AuthFormState(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
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
          : authFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {@required this.firstName,
      @required this.lastName,
      @required this.phoneNumber,
      @required this.emailAddress,
      @required this.password,
      @required this.verificationCode,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess})
      : assert(firstName != null),
        assert(lastName != null),
        assert(phoneNumber != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(verificationCode != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null);

  @override
  final String firstName;
  @override
  final String lastName;
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
  final Option<Either<AuthGlitch, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'AuthFormState(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, emailAddress: $emailAddress, password: $password, verificationCode: $verificationCode, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
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
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      __$AuthFormStateCopyWithImpl<_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
          {@required String firstName,
          @required String lastName,
          @required String phoneNumber,
          @required String emailAddress,
          @required String password,
          @required String verificationCode,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthGlitch, Unit>> authFailureOrSuccess}) =
      _$_AuthFormState;

  @override
  String get firstName;
  @override
  String get lastName;
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
  Option<Either<AuthGlitch, Unit>> get authFailureOrSuccess;
  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith;
}
