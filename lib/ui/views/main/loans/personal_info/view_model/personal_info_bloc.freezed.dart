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
  Init init(UserDetailsRequest data) {
    return Init(
      data,
    );
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
  GenderChanged genderChanged(String gender) {
    return GenderChanged(
      gender,
    );
  }

// ignore: unused_element
  DateOfBirthChanged dateOfBirthChanged(String dateOfBirth) {
    return DateOfBirthChanged(
      dateOfBirth,
    );
  }

// ignore: unused_element
  MaritalStatusChanged maritalStatusChanged(String maritalStatus) {
    return MaritalStatusChanged(
      maritalStatus,
    );
  }

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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
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
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest data});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$PersonalInfoEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Init(
      data == freezed ? _value.data : data as UserDetailsRequest,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$Init implements Init {
  const _$Init(this.data) : assert(data != null);

  @override
  final UserDetailsRequest data;

  @override
  String toString() {
    return 'PersonalInfoEvent.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(data);
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
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
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements PersonalInfoEvent {
  const factory Init(UserDetailsRequest data) = _$Init;

  UserDetailsRequest get data;
  $InitCopyWith<Init> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res>
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
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'PersonalInfoEvent.emailChanged(email: $email)';
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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
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
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements PersonalInfoEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

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
    extends _$PersonalInfoEventCopyWithImpl<$Res>
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
  const _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'PersonalInfoEvent.firstNameChanged(firstName: $firstName)';
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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
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
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements PersonalInfoEvent {
  const factory FirstNameChanged(String firstName) = _$FirstNameChanged;

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
    extends _$PersonalInfoEventCopyWithImpl<$Res>
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
  const _$LastNameChanged(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'PersonalInfoEvent.lastNameChanged(lastName: $lastName)';
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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
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
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements PersonalInfoEvent {
  const factory LastNameChanged(String lastName) = _$LastNameChanged;

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
    extends _$PersonalInfoEventCopyWithImpl<$Res>
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
  const _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PersonalInfoEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
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
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements PersonalInfoEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $GenderChangedCopyWith<$Res> {
  factory $GenderChangedCopyWith(
          GenderChanged value, $Res Function(GenderChanged) then) =
      _$GenderChangedCopyWithImpl<$Res>;
  $Res call({String gender});
}

/// @nodoc
class _$GenderChangedCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res>
    implements $GenderChangedCopyWith<$Res> {
  _$GenderChangedCopyWithImpl(
      GenderChanged _value, $Res Function(GenderChanged) _then)
      : super(_value, (v) => _then(v as GenderChanged));

  @override
  GenderChanged get _value => super._value as GenderChanged;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(GenderChanged(
      gender == freezed ? _value.gender : gender as String,
    ));
  }
}

/// @nodoc
class _$GenderChanged implements GenderChanged {
  const _$GenderChanged(this.gender) : assert(gender != null);

  @override
  final String gender;

  @override
  String toString() {
    return 'PersonalInfoEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderChanged &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @override
  $GenderChangedCopyWith<GenderChanged> get copyWith =>
      _$GenderChangedCopyWithImpl<GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(gender);
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements PersonalInfoEvent {
  const factory GenderChanged(String gender) = _$GenderChanged;

  String get gender;
  $GenderChangedCopyWith<GenderChanged> get copyWith;
}

/// @nodoc
abstract class $DateOfBirthChangedCopyWith<$Res> {
  factory $DateOfBirthChangedCopyWith(
          DateOfBirthChanged value, $Res Function(DateOfBirthChanged) then) =
      _$DateOfBirthChangedCopyWithImpl<$Res>;
  $Res call({String dateOfBirth});
}

/// @nodoc
class _$DateOfBirthChangedCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res>
    implements $DateOfBirthChangedCopyWith<$Res> {
  _$DateOfBirthChangedCopyWithImpl(
      DateOfBirthChanged _value, $Res Function(DateOfBirthChanged) _then)
      : super(_value, (v) => _then(v as DateOfBirthChanged));

  @override
  DateOfBirthChanged get _value => super._value as DateOfBirthChanged;

  @override
  $Res call({
    Object dateOfBirth = freezed,
  }) {
    return _then(DateOfBirthChanged(
      dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as String,
    ));
  }
}

/// @nodoc
class _$DateOfBirthChanged implements DateOfBirthChanged {
  const _$DateOfBirthChanged(this.dateOfBirth) : assert(dateOfBirth != null);

  @override
  final String dateOfBirth;

  @override
  String toString() {
    return 'PersonalInfoEvent.dateOfBirthChanged(dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateOfBirthChanged &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateOfBirth);

  @override
  $DateOfBirthChangedCopyWith<DateOfBirthChanged> get copyWith =>
      _$DateOfBirthChangedCopyWithImpl<DateOfBirthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return dateOfBirthChanged(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(dateOfBirth);
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class DateOfBirthChanged implements PersonalInfoEvent {
  const factory DateOfBirthChanged(String dateOfBirth) = _$DateOfBirthChanged;

  String get dateOfBirth;
  $DateOfBirthChangedCopyWith<DateOfBirthChanged> get copyWith;
}

/// @nodoc
abstract class $MaritalStatusChangedCopyWith<$Res> {
  factory $MaritalStatusChangedCopyWith(MaritalStatusChanged value,
          $Res Function(MaritalStatusChanged) then) =
      _$MaritalStatusChangedCopyWithImpl<$Res>;
  $Res call({String maritalStatus});
}

/// @nodoc
class _$MaritalStatusChangedCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res>
    implements $MaritalStatusChangedCopyWith<$Res> {
  _$MaritalStatusChangedCopyWithImpl(
      MaritalStatusChanged _value, $Res Function(MaritalStatusChanged) _then)
      : super(_value, (v) => _then(v as MaritalStatusChanged));

  @override
  MaritalStatusChanged get _value => super._value as MaritalStatusChanged;

  @override
  $Res call({
    Object maritalStatus = freezed,
  }) {
    return _then(MaritalStatusChanged(
      maritalStatus == freezed ? _value.maritalStatus : maritalStatus as String,
    ));
  }
}

/// @nodoc
class _$MaritalStatusChanged implements MaritalStatusChanged {
  const _$MaritalStatusChanged(this.maritalStatus)
      : assert(maritalStatus != null);

  @override
  final String maritalStatus;

  @override
  String toString() {
    return 'PersonalInfoEvent.maritalStatusChanged(maritalStatus: $maritalStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaritalStatusChanged &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(maritalStatus);

  @override
  $MaritalStatusChangedCopyWith<MaritalStatusChanged> get copyWith =>
      _$MaritalStatusChangedCopyWithImpl<MaritalStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return maritalStatusChanged(maritalStatus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
    Result submitPersonalInfo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (maritalStatusChanged != null) {
      return maritalStatusChanged(maritalStatus);
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
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return maritalStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
    Result submitPersonalInfo(SubmitPersonalInfo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (maritalStatusChanged != null) {
      return maritalStatusChanged(this);
    }
    return orElse();
  }
}

abstract class MaritalStatusChanged implements PersonalInfoEvent {
  const factory MaritalStatusChanged(String maritalStatus) =
      _$MaritalStatusChanged;

  String get maritalStatus;
  $MaritalStatusChangedCopyWith<MaritalStatusChanged> get copyWith;
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
    @required Result init(UserDetailsRequest data),
    @required Result emailChanged(String email),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required Result genderChanged(String gender),
    @required Result dateOfBirthChanged(String dateOfBirth),
    @required Result maritalStatusChanged(String maritalStatus),
    @required Result submitPersonalInfo(),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return submitPersonalInfo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result emailChanged(String email),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result genderChanged(String gender),
    Result dateOfBirthChanged(String dateOfBirth),
    Result maritalStatusChanged(String maritalStatus),
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
    @required Result init(Init value),
    @required Result emailChanged(EmailChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result genderChanged(GenderChanged value),
    @required Result dateOfBirthChanged(DateOfBirthChanged value),
    @required Result maritalStatusChanged(MaritalStatusChanged value),
    @required Result submitPersonalInfo(SubmitPersonalInfo value),
  }) {
    assert(init != null);
    assert(emailChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderChanged != null);
    assert(dateOfBirthChanged != null);
    assert(maritalStatusChanged != null);
    assert(submitPersonalInfo != null);
    return submitPersonalInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result emailChanged(EmailChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result genderChanged(GenderChanged value),
    Result dateOfBirthChanged(DateOfBirthChanged value),
    Result maritalStatusChanged(MaritalStatusChanged value),
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
      {UserDetailsRequest userDetails,
      @required String firstName,
      @required String lastName,
      @required String gender,
      @required String maritalStatus,
      @required String emailAddress,
      @required String phoneNumber,
      @required String dateOfBirth,
      @required List<Value> genders,
      @required List<Value> maritalStatuses,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _PersonalInfoState(
      userDetails: userDetails,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      maritalStatus: maritalStatus,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      genders: genders,
      maritalStatuses: maritalStatuses,
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
  UserDetailsRequest get userDetails;
  String get firstName;
  String get lastName;
  String get gender;
  String get maritalStatus;
  String get emailAddress;
  String get phoneNumber;
  String get dateOfBirth;
  List<Value> get genders;
  List<Value> get maritalStatuses;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $PersonalInfoStateCopyWith<PersonalInfoState> get copyWith;
}

/// @nodoc
abstract class $PersonalInfoStateCopyWith<$Res> {
  factory $PersonalInfoStateCopyWith(
          PersonalInfoState value, $Res Function(PersonalInfoState) then) =
      _$PersonalInfoStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest userDetails,
      String firstName,
      String lastName,
      String gender,
      String maritalStatus,
      String emailAddress,
      String phoneNumber,
      String dateOfBirth,
      List<Value> genders,
      List<Value> maritalStatuses,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object gender = freezed,
    Object maritalStatus = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object dateOfBirth = freezed,
    Object genders = freezed,
    Object maritalStatuses = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      gender: gender == freezed ? _value.gender : gender as String,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as String,
      genders: genders == freezed ? _value.genders : genders as List<Value>,
      maritalStatuses: maritalStatuses == freezed
          ? _value.maritalStatuses
          : maritalStatuses as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails {
    if (_value.userDetails == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
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
      {UserDetailsRequest userDetails,
      String firstName,
      String lastName,
      String gender,
      String maritalStatus,
      String emailAddress,
      String phoneNumber,
      String dateOfBirth,
      List<Value> genders,
      List<Value> maritalStatuses,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object gender = freezed,
    Object maritalStatus = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object dateOfBirth = freezed,
    Object genders = freezed,
    Object maritalStatuses = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_PersonalInfoState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      gender: gender == freezed ? _value.gender : gender as String,
      maritalStatus: maritalStatus == freezed
          ? _value.maritalStatus
          : maritalStatus as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as String,
      genders: genders == freezed ? _value.genders : genders as List<Value>,
      maritalStatuses: maritalStatuses == freezed
          ? _value.maritalStatuses
          : maritalStatuses as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PersonalInfoState implements _PersonalInfoState {
  const _$_PersonalInfoState(
      {this.userDetails,
      @required this.firstName,
      @required this.lastName,
      @required this.gender,
      @required this.maritalStatus,
      @required this.emailAddress,
      @required this.phoneNumber,
      @required this.dateOfBirth,
      @required this.genders,
      @required this.maritalStatuses,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(firstName != null),
        assert(lastName != null),
        assert(gender != null),
        assert(maritalStatus != null),
        assert(emailAddress != null),
        assert(phoneNumber != null),
        assert(dateOfBirth != null),
        assert(genders != null),
        assert(maritalStatuses != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final UserDetailsRequest userDetails;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final String maritalStatus;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;
  @override
  final String dateOfBirth;
  @override
  final List<Value> genders;
  @override
  final List<Value> maritalStatuses;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'PersonalInfoState(userDetails: $userDetails, firstName: $firstName, lastName: $lastName, gender: $gender, maritalStatus: $maritalStatus, emailAddress: $emailAddress, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, genders: $genders, maritalStatuses: $maritalStatuses, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalInfoState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.maritalStatus, maritalStatus) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatus, maritalStatus)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.genders, genders) ||
                const DeepCollectionEquality()
                    .equals(other.genders, genders)) &&
            (identical(other.maritalStatuses, maritalStatuses) ||
                const DeepCollectionEquality()
                    .equals(other.maritalStatuses, maritalStatuses)) &&
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
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(maritalStatus) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(genders) ^
      const DeepCollectionEquality().hash(maritalStatuses) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith =>
      __$PersonalInfoStateCopyWithImpl<_PersonalInfoState>(this, _$identity);
}

abstract class _PersonalInfoState implements PersonalInfoState {
  const factory _PersonalInfoState(
          {UserDetailsRequest userDetails,
          @required String firstName,
          @required String lastName,
          @required String gender,
          @required String maritalStatus,
          @required String emailAddress,
          @required String phoneNumber,
          @required String dateOfBirth,
          @required List<Value> genders,
          @required List<Value> maritalStatuses,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_PersonalInfoState;

  @override
  UserDetailsRequest get userDetails;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get gender;
  @override
  String get maritalStatus;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  String get dateOfBirth;
  @override
  List<Value> get genders;
  @override
  List<Value> get maritalStatuses;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith;
}
