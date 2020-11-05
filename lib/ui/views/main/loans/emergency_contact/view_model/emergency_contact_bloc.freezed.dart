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
  Init init(UserDetailsRequest data) {
    return Init(
      data,
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
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phone) {
    return PhoneNumberChanged(
      phone,
    );
  }

// ignore: unused_element
  RelationShipChanged relationShipChanged(String relationShip) {
    return RelationShipChanged(
      relationShip,
    );
  }

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
    @required Result init(UserDetailsRequest data),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
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
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest data});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$EmergencyContactEventCopyWithImpl<$Res>
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
    return 'EmergencyContactEvent.init(data: $data)';
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
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements EmergencyContactEvent {
  const factory Init(UserDetailsRequest data) = _$Init;

  UserDetailsRequest get data;
  $InitCopyWith<Init> get copyWith;
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
    extends _$EmergencyContactEventCopyWithImpl<$Res>
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
    return 'EmergencyContactEvent.firstNameChanged(firstName: $firstName)';
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
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements EmergencyContactEvent {
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
    extends _$EmergencyContactEventCopyWithImpl<$Res>
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
    return 'EmergencyContactEvent.lastNameChanged(lastName: $lastName)';
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
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements EmergencyContactEvent {
  const factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
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
    extends _$EmergencyContactEventCopyWithImpl<$Res>
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
    return 'EmergencyContactEvent.emailChanged(email: $email)';
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
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements EmergencyContactEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$EmergencyContactEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'EmergencyContactEvent.phoneNumberChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements EmergencyContactEvent {
  const factory PhoneNumberChanged(String phone) = _$PhoneNumberChanged;

  String get phone;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $RelationShipChangedCopyWith<$Res> {
  factory $RelationShipChangedCopyWith(
          RelationShipChanged value, $Res Function(RelationShipChanged) then) =
      _$RelationShipChangedCopyWithImpl<$Res>;
  $Res call({String relationShip});
}

/// @nodoc
class _$RelationShipChangedCopyWithImpl<$Res>
    extends _$EmergencyContactEventCopyWithImpl<$Res>
    implements $RelationShipChangedCopyWith<$Res> {
  _$RelationShipChangedCopyWithImpl(
      RelationShipChanged _value, $Res Function(RelationShipChanged) _then)
      : super(_value, (v) => _then(v as RelationShipChanged));

  @override
  RelationShipChanged get _value => super._value as RelationShipChanged;

  @override
  $Res call({
    Object relationShip = freezed,
  }) {
    return _then(RelationShipChanged(
      relationShip == freezed ? _value.relationShip : relationShip as String,
    ));
  }
}

/// @nodoc
class _$RelationShipChanged implements RelationShipChanged {
  const _$RelationShipChanged(this.relationShip) : assert(relationShip != null);

  @override
  final String relationShip;

  @override
  String toString() {
    return 'EmergencyContactEvent.relationShipChanged(relationShip: $relationShip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RelationShipChanged &&
            (identical(other.relationShip, relationShip) ||
                const DeepCollectionEquality()
                    .equals(other.relationShip, relationShip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(relationShip);

  @override
  $RelationShipChangedCopyWith<RelationShipChanged> get copyWith =>
      _$RelationShipChangedCopyWithImpl<RelationShipChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return relationShipChanged(relationShip);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
    Result submitEmergencyContactForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (relationShipChanged != null) {
      return relationShipChanged(relationShip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return relationShipChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
    Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (relationShipChanged != null) {
      return relationShipChanged(this);
    }
    return orElse();
  }
}

abstract class RelationShipChanged implements EmergencyContactEvent {
  const factory RelationShipChanged(String relationShip) =
      _$RelationShipChanged;

  String get relationShip;
  $RelationShipChangedCopyWith<RelationShipChanged> get copyWith;
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
    @required Result init(UserDetailsRequest data),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result relationShipChanged(String relationShip),
    @required Result submitEmergencyContactForm(),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return submitEmergencyContactForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result relationShipChanged(String relationShip),
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
    @required Result init(Init value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result lastNameChanged(LastNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result relationShipChanged(RelationShipChanged value),
    @required
        Result submitEmergencyContactForm(SubmitEmergencyContactForm value),
  }) {
    assert(init != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(relationShipChanged != null);
    assert(submitEmergencyContactForm != null);
    return submitEmergencyContactForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result firstNameChanged(FirstNameChanged value),
    Result lastNameChanged(LastNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result relationShipChanged(RelationShipChanged value),
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
      {UserDetailsRequest userDetails,
      @required String firstName,
      @required String lastName,
      @required String email,
      @required String phone,
      @required String relationShip,
      @required List<Value> relationShips,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _EmergencyContactState(
      userDetails: userDetails,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      relationShip: relationShip,
      relationShips: relationShips,
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
  UserDetailsRequest get userDetails;
  String get firstName;
  String get lastName;
  String get email;
  String get phone;
  String get relationShip;
  List<Value> get relationShips;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $EmergencyContactStateCopyWith<EmergencyContactState> get copyWith;
}

/// @nodoc
abstract class $EmergencyContactStateCopyWith<$Res> {
  factory $EmergencyContactStateCopyWith(EmergencyContactState value,
          $Res Function(EmergencyContactState) then) =
      _$EmergencyContactStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest userDetails,
      String firstName,
      String lastName,
      String email,
      String phone,
      String relationShip,
      List<Value> relationShips,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object relationShip = freezed,
    Object relationShips = freezed,
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
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      relationShip: relationShip == freezed
          ? _value.relationShip
          : relationShip as String,
      relationShips: relationShips == freezed
          ? _value.relationShips
          : relationShips as List<Value>,
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
abstract class _$EmergencyContactStateCopyWith<$Res>
    implements $EmergencyContactStateCopyWith<$Res> {
  factory _$EmergencyContactStateCopyWith(_EmergencyContactState value,
          $Res Function(_EmergencyContactState) then) =
      __$EmergencyContactStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsRequest userDetails,
      String firstName,
      String lastName,
      String email,
      String phone,
      String relationShip,
      List<Value> relationShips,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object relationShip = freezed,
    Object relationShips = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_EmergencyContactState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      relationShip: relationShip == freezed
          ? _value.relationShip
          : relationShip as String,
      relationShips: relationShips == freezed
          ? _value.relationShips
          : relationShips as List<Value>,
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
class _$_EmergencyContactState implements _EmergencyContactState {
  const _$_EmergencyContactState(
      {this.userDetails,
      @required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.phone,
      @required this.relationShip,
      @required this.relationShips,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(phone != null),
        assert(relationShip != null),
        assert(relationShips != null),
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
  final String email;
  @override
  final String phone;
  @override
  final String relationShip;
  @override
  final List<Value> relationShips;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'EmergencyContactState(userDetails: $userDetails, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, relationShip: $relationShip, relationShips: $relationShips, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmergencyContactState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.relationShip, relationShip) ||
                const DeepCollectionEquality()
                    .equals(other.relationShip, relationShip)) &&
            (identical(other.relationShips, relationShips) ||
                const DeepCollectionEquality()
                    .equals(other.relationShips, relationShips)) &&
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
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(relationShip) ^
      const DeepCollectionEquality().hash(relationShips) ^
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
          {UserDetailsRequest userDetails,
          @required String firstName,
          @required String lastName,
          @required String email,
          @required String phone,
          @required String relationShip,
          @required List<Value> relationShips,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_EmergencyContactState;

  @override
  UserDetailsRequest get userDetails;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get relationShip;
  @override
  List<Value> get relationShips;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$EmergencyContactStateCopyWith<_EmergencyContactState> get copyWith;
}
