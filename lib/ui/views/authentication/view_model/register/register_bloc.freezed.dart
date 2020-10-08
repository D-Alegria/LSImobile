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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
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

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
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

class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
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

class _$FirstNameChanged implements FirstNameChanged {
  _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.firstNameChanged(firstName: $firstName)';
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements RegisterEvent {
  factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

class _$LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
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

class _$LastNameChanged implements LastNameChanged {
  _$LastNameChanged(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.lastNameChanged(lastName: $lastName)';
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements RegisterEvent {
  factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
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

class _$PhoneNumberChanged implements PhoneNumberChanged {
  _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements RegisterEvent {
  factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
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

class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
    Result registerUser(),
    Result verifyUser(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUser(RegisterUser value),
    Result verifyUser(VerifyUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
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
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result passwordChanged(String password),
    @required Result registerUser(),
    @required Result verifyUser(),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return verifyUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result passwordChanged(String password),
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
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerUser(RegisterUser value),
    @required Result verifyUser(VerifyUser value),
  }) {
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerUser != null);
    assert(verifyUser != null);
    return verifyUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result passwordChanged(PasswordChanged value),
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
      {@required String firstName,
      @required String lastName,
      @required String phoneNumber,
      @required String emailAddress,
      @required String password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess,
      @required Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess}) {
    return _RegisterState(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      emailAddress: emailAddress,
      password: password,
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
  String get firstName;
  String get lastName;
  String get phoneNumber;
  String get emailAddress;
  String get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthGlitch, Unit>> get registerFailureOrSuccess;
  Option<Either<AuthGlitch, Unit>> get verifyFailureOrSuccess;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String phoneNumber,
      String emailAddress,
      String password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess,
      Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
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
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccess: registerFailureOrSuccess == freezed
          ? _value.registerFailureOrSuccess
          : registerFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
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
      {String firstName,
      String lastName,
      String phoneNumber,
      String emailAddress,
      String password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess,
      Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object registerFailureOrSuccess = freezed,
    Object verifyFailureOrSuccess = freezed,
  }) {
    return _then(_RegisterState(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      registerFailureOrSuccess: registerFailureOrSuccess == freezed
          ? _value.registerFailureOrSuccess
          : registerFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
      verifyFailureOrSuccess: verifyFailureOrSuccess == freezed
          ? _value.verifyFailureOrSuccess
          : verifyFailureOrSuccess as Option<Either<AuthGlitch, Unit>>,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {@required this.firstName,
      @required this.lastName,
      @required this.phoneNumber,
      @required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.registerFailureOrSuccess,
      @required this.verifyFailureOrSuccess})
      : assert(firstName != null),
        assert(lastName != null),
        assert(phoneNumber != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(registerFailureOrSuccess != null),
        assert(verifyFailureOrSuccess != null);

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
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess;
  @override
  final Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess;

  @override
  String toString() {
    return 'RegisterState(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, registerFailureOrSuccess: $registerFailureOrSuccess, verifyFailureOrSuccess: $verifyFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
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
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
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
          {@required String firstName,
          @required String lastName,
          @required String phoneNumber,
          @required String emailAddress,
          @required String password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess,
          @required Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess}) =
      _$_RegisterState;

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
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthGlitch, Unit>> get registerFailureOrSuccess;
  @override
  Option<Either<AuthGlitch, Unit>> get verifyFailureOrSuccess;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
