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
  Init init(UserDetailsRequest data) {
    return Init(
      data,
    );
  }

// ignore: unused_element
  SubmitResidenceForm submitResidenceForm() {
    return const SubmitResidenceForm();
  }

// ignore: unused_element
  TypeOfResidenceChanged typeOfResidenceChanged(String residence) {
    return TypeOfResidenceChanged(
      residence,
    );
  }

// ignore: unused_element
  CurrentAddressChanged currentAddressChanged(String address) {
    return CurrentAddressChanged(
      address,
    );
  }

// ignore: unused_element
  StateChanged stateChanged(String state) {
    return StateChanged(
      state,
    );
  }

// ignore: unused_element
  LgaChanged lgaChanged(String lga) {
    return LgaChanged(
      lga,
    );
  }

// ignore: unused_element
  StayPeriodChanged stayPeriodChanged(String period) {
    return StayPeriodChanged(
      period,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResidenceEvent = _$ResidenceEventTearOff();

/// @nodoc
mixin _$ResidenceEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
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
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest data});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$ResidenceEventCopyWithImpl<$Res>
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
    return 'ResidenceEvent.init(data: $data)';
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
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
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
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ResidenceEvent {
  const factory Init(UserDetailsRequest data) = _$Init;

  UserDetailsRequest get data;
  $InitCopyWith<Init> get copyWith;
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
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return submitResidenceForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
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
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return submitResidenceForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
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
abstract class $TypeOfResidenceChangedCopyWith<$Res> {
  factory $TypeOfResidenceChangedCopyWith(TypeOfResidenceChanged value,
          $Res Function(TypeOfResidenceChanged) then) =
      _$TypeOfResidenceChangedCopyWithImpl<$Res>;
  $Res call({String residence});
}

/// @nodoc
class _$TypeOfResidenceChangedCopyWithImpl<$Res>
    extends _$ResidenceEventCopyWithImpl<$Res>
    implements $TypeOfResidenceChangedCopyWith<$Res> {
  _$TypeOfResidenceChangedCopyWithImpl(TypeOfResidenceChanged _value,
      $Res Function(TypeOfResidenceChanged) _then)
      : super(_value, (v) => _then(v as TypeOfResidenceChanged));

  @override
  TypeOfResidenceChanged get _value => super._value as TypeOfResidenceChanged;

  @override
  $Res call({
    Object residence = freezed,
  }) {
    return _then(TypeOfResidenceChanged(
      residence == freezed ? _value.residence : residence as String,
    ));
  }
}

/// @nodoc
class _$TypeOfResidenceChanged implements TypeOfResidenceChanged {
  const _$TypeOfResidenceChanged(this.residence) : assert(residence != null);

  @override
  final String residence;

  @override
  String toString() {
    return 'ResidenceEvent.typeOfResidenceChanged(residence: $residence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeOfResidenceChanged &&
            (identical(other.residence, residence) ||
                const DeepCollectionEquality()
                    .equals(other.residence, residence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(residence);

  @override
  $TypeOfResidenceChangedCopyWith<TypeOfResidenceChanged> get copyWith =>
      _$TypeOfResidenceChangedCopyWithImpl<TypeOfResidenceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return typeOfResidenceChanged(residence);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (typeOfResidenceChanged != null) {
      return typeOfResidenceChanged(residence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return typeOfResidenceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (typeOfResidenceChanged != null) {
      return typeOfResidenceChanged(this);
    }
    return orElse();
  }
}

abstract class TypeOfResidenceChanged implements ResidenceEvent {
  const factory TypeOfResidenceChanged(String residence) =
      _$TypeOfResidenceChanged;

  String get residence;
  $TypeOfResidenceChangedCopyWith<TypeOfResidenceChanged> get copyWith;
}

/// @nodoc
abstract class $CurrentAddressChangedCopyWith<$Res> {
  factory $CurrentAddressChangedCopyWith(CurrentAddressChanged value,
          $Res Function(CurrentAddressChanged) then) =
      _$CurrentAddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$CurrentAddressChangedCopyWithImpl<$Res>
    extends _$ResidenceEventCopyWithImpl<$Res>
    implements $CurrentAddressChangedCopyWith<$Res> {
  _$CurrentAddressChangedCopyWithImpl(
      CurrentAddressChanged _value, $Res Function(CurrentAddressChanged) _then)
      : super(_value, (v) => _then(v as CurrentAddressChanged));

  @override
  CurrentAddressChanged get _value => super._value as CurrentAddressChanged;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(CurrentAddressChanged(
      address == freezed ? _value.address : address as String,
    ));
  }
}

/// @nodoc
class _$CurrentAddressChanged implements CurrentAddressChanged {
  const _$CurrentAddressChanged(this.address) : assert(address != null);

  @override
  final String address;

  @override
  String toString() {
    return 'ResidenceEvent.currentAddressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentAddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @override
  $CurrentAddressChangedCopyWith<CurrentAddressChanged> get copyWith =>
      _$CurrentAddressChangedCopyWithImpl<CurrentAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return currentAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentAddressChanged != null) {
      return currentAddressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return currentAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentAddressChanged != null) {
      return currentAddressChanged(this);
    }
    return orElse();
  }
}

abstract class CurrentAddressChanged implements ResidenceEvent {
  const factory CurrentAddressChanged(String address) = _$CurrentAddressChanged;

  String get address;
  $CurrentAddressChangedCopyWith<CurrentAddressChanged> get copyWith;
}

/// @nodoc
abstract class $StateChangedCopyWith<$Res> {
  factory $StateChangedCopyWith(
          StateChanged value, $Res Function(StateChanged) then) =
      _$StateChangedCopyWithImpl<$Res>;
  $Res call({String state});
}

/// @nodoc
class _$StateChangedCopyWithImpl<$Res>
    extends _$ResidenceEventCopyWithImpl<$Res>
    implements $StateChangedCopyWith<$Res> {
  _$StateChangedCopyWithImpl(
      StateChanged _value, $Res Function(StateChanged) _then)
      : super(_value, (v) => _then(v as StateChanged));

  @override
  StateChanged get _value => super._value as StateChanged;

  @override
  $Res call({
    Object state = freezed,
  }) {
    return _then(StateChanged(
      state == freezed ? _value.state : state as String,
    ));
  }
}

/// @nodoc
class _$StateChanged implements StateChanged {
  const _$StateChanged(this.state) : assert(state != null);

  @override
  final String state;

  @override
  String toString() {
    return 'ResidenceEvent.stateChanged(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateChanged &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @override
  $StateChangedCopyWith<StateChanged> get copyWith =>
      _$StateChangedCopyWithImpl<StateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return stateChanged(state);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateChanged != null) {
      return stateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return stateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateChanged != null) {
      return stateChanged(this);
    }
    return orElse();
  }
}

abstract class StateChanged implements ResidenceEvent {
  const factory StateChanged(String state) = _$StateChanged;

  String get state;
  $StateChangedCopyWith<StateChanged> get copyWith;
}

/// @nodoc
abstract class $LgaChangedCopyWith<$Res> {
  factory $LgaChangedCopyWith(
          LgaChanged value, $Res Function(LgaChanged) then) =
      _$LgaChangedCopyWithImpl<$Res>;
  $Res call({String lga});
}

/// @nodoc
class _$LgaChangedCopyWithImpl<$Res> extends _$ResidenceEventCopyWithImpl<$Res>
    implements $LgaChangedCopyWith<$Res> {
  _$LgaChangedCopyWithImpl(LgaChanged _value, $Res Function(LgaChanged) _then)
      : super(_value, (v) => _then(v as LgaChanged));

  @override
  LgaChanged get _value => super._value as LgaChanged;

  @override
  $Res call({
    Object lga = freezed,
  }) {
    return _then(LgaChanged(
      lga == freezed ? _value.lga : lga as String,
    ));
  }
}

/// @nodoc
class _$LgaChanged implements LgaChanged {
  const _$LgaChanged(this.lga) : assert(lga != null);

  @override
  final String lga;

  @override
  String toString() {
    return 'ResidenceEvent.lgaChanged(lga: $lga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LgaChanged &&
            (identical(other.lga, lga) ||
                const DeepCollectionEquality().equals(other.lga, lga)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lga);

  @override
  $LgaChangedCopyWith<LgaChanged> get copyWith =>
      _$LgaChangedCopyWithImpl<LgaChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return lgaChanged(lga);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lgaChanged != null) {
      return lgaChanged(lga);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return lgaChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lgaChanged != null) {
      return lgaChanged(this);
    }
    return orElse();
  }
}

abstract class LgaChanged implements ResidenceEvent {
  const factory LgaChanged(String lga) = _$LgaChanged;

  String get lga;
  $LgaChangedCopyWith<LgaChanged> get copyWith;
}

/// @nodoc
abstract class $StayPeriodChangedCopyWith<$Res> {
  factory $StayPeriodChangedCopyWith(
          StayPeriodChanged value, $Res Function(StayPeriodChanged) then) =
      _$StayPeriodChangedCopyWithImpl<$Res>;
  $Res call({String period});
}

/// @nodoc
class _$StayPeriodChangedCopyWithImpl<$Res>
    extends _$ResidenceEventCopyWithImpl<$Res>
    implements $StayPeriodChangedCopyWith<$Res> {
  _$StayPeriodChangedCopyWithImpl(
      StayPeriodChanged _value, $Res Function(StayPeriodChanged) _then)
      : super(_value, (v) => _then(v as StayPeriodChanged));

  @override
  StayPeriodChanged get _value => super._value as StayPeriodChanged;

  @override
  $Res call({
    Object period = freezed,
  }) {
    return _then(StayPeriodChanged(
      period == freezed ? _value.period : period as String,
    ));
  }
}

/// @nodoc
class _$StayPeriodChanged implements StayPeriodChanged {
  const _$StayPeriodChanged(this.period) : assert(period != null);

  @override
  final String period;

  @override
  String toString() {
    return 'ResidenceEvent.stayPeriodChanged(period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StayPeriodChanged &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(period);

  @override
  $StayPeriodChangedCopyWith<StayPeriodChanged> get copyWith =>
      _$StayPeriodChangedCopyWithImpl<StayPeriodChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitResidenceForm(),
    @required Result typeOfResidenceChanged(String residence),
    @required Result currentAddressChanged(String address),
    @required Result stateChanged(String state),
    @required Result lgaChanged(String lga),
    @required Result stayPeriodChanged(String period),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return stayPeriodChanged(period);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitResidenceForm(),
    Result typeOfResidenceChanged(String residence),
    Result currentAddressChanged(String address),
    Result stateChanged(String state),
    Result lgaChanged(String lga),
    Result stayPeriodChanged(String period),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stayPeriodChanged != null) {
      return stayPeriodChanged(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitResidenceForm(SubmitResidenceForm value),
    @required Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    @required Result currentAddressChanged(CurrentAddressChanged value),
    @required Result stateChanged(StateChanged value),
    @required Result lgaChanged(LgaChanged value),
    @required Result stayPeriodChanged(StayPeriodChanged value),
  }) {
    assert(init != null);
    assert(submitResidenceForm != null);
    assert(typeOfResidenceChanged != null);
    assert(currentAddressChanged != null);
    assert(stateChanged != null);
    assert(lgaChanged != null);
    assert(stayPeriodChanged != null);
    return stayPeriodChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitResidenceForm(SubmitResidenceForm value),
    Result typeOfResidenceChanged(TypeOfResidenceChanged value),
    Result currentAddressChanged(CurrentAddressChanged value),
    Result stateChanged(StateChanged value),
    Result lgaChanged(LgaChanged value),
    Result stayPeriodChanged(StayPeriodChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stayPeriodChanged != null) {
      return stayPeriodChanged(this);
    }
    return orElse();
  }
}

abstract class StayPeriodChanged implements ResidenceEvent {
  const factory StayPeriodChanged(String period) = _$StayPeriodChanged;

  String get period;
  $StayPeriodChangedCopyWith<StayPeriodChanged> get copyWith;
}

/// @nodoc
class _$ResidenceStateTearOff {
  const _$ResidenceStateTearOff();

// ignore: unused_element
  _ResidenceState call(
      {UserDetailsRequest userDetails,
      @required String typeOfResidence,
      @required String currentAddress,
      @required String state,
      @required String lga,
      @required String stayPeriod,
      @required List<Value> residences,
      @required List<Value> states,
      @required List<Value> lgas,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess}) {
    return _ResidenceState(
      userDetails: userDetails,
      typeOfResidence: typeOfResidence,
      currentAddress: currentAddress,
      state: state,
      lga: lga,
      stayPeriod: stayPeriod,
      residences: residences,
      states: states,
      lgas: lgas,
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
  UserDetailsRequest get userDetails;
  String get typeOfResidence;
  String get currentAddress;
  String get state;
  String get lga;
  String get stayPeriod;
  List<Value> get residences;
  List<Value> get states;
  List<Value> get lgas;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitResidenceFailureOrSuccess;

  $ResidenceStateCopyWith<ResidenceState> get copyWith;
}

/// @nodoc
abstract class $ResidenceStateCopyWith<$Res> {
  factory $ResidenceStateCopyWith(
          ResidenceState value, $Res Function(ResidenceState) then) =
      _$ResidenceStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest userDetails,
      String typeOfResidence,
      String currentAddress,
      String state,
      String lga,
      String stayPeriod,
      List<Value> residences,
      List<Value> states,
      List<Value> lgas,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object typeOfResidence = freezed,
    Object currentAddress = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object stayPeriod = freezed,
    Object residences = freezed,
    Object states = freezed,
    Object lgas = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      typeOfResidence: typeOfResidence == freezed
          ? _value.typeOfResidence
          : typeOfResidence as String,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      stayPeriod:
          stayPeriod == freezed ? _value.stayPeriod : stayPeriod as String,
      residences:
          residences == freezed ? _value.residences : residences as List<Value>,
      states: states == freezed ? _value.states : states as List<Value>,
      lgas: lgas == freezed ? _value.lgas : lgas as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess as Option<Either<Glitch, Unit>>,
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
abstract class _$ResidenceStateCopyWith<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  factory _$ResidenceStateCopyWith(
          _ResidenceState value, $Res Function(_ResidenceState) then) =
      __$ResidenceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsRequest userDetails,
      String typeOfResidence,
      String currentAddress,
      String state,
      String lga,
      String stayPeriod,
      List<Value> residences,
      List<Value> states,
      List<Value> lgas,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
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
    Object userDetails = freezed,
    Object typeOfResidence = freezed,
    Object currentAddress = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object stayPeriod = freezed,
    Object residences = freezed,
    Object states = freezed,
    Object lgas = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_ResidenceState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      typeOfResidence: typeOfResidence == freezed
          ? _value.typeOfResidence
          : typeOfResidence as String,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      stayPeriod:
          stayPeriod == freezed ? _value.stayPeriod : stayPeriod as String,
      residences:
          residences == freezed ? _value.residences : residences as List<Value>,
      states: states == freezed ? _value.states : states as List<Value>,
      lgas: lgas == freezed ? _value.lgas : lgas as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ResidenceState implements _ResidenceState {
  const _$_ResidenceState(
      {this.userDetails,
      @required this.typeOfResidence,
      @required this.currentAddress,
      @required this.state,
      @required this.lga,
      @required this.stayPeriod,
      @required this.residences,
      @required this.states,
      @required this.lgas,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitResidenceFailureOrSuccess})
      : assert(typeOfResidence != null),
        assert(currentAddress != null),
        assert(state != null),
        assert(lga != null),
        assert(stayPeriod != null),
        assert(residences != null),
        assert(states != null),
        assert(lgas != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitResidenceFailureOrSuccess != null);

  @override
  final UserDetailsRequest userDetails;
  @override
  final String typeOfResidence;
  @override
  final String currentAddress;
  @override
  final String state;
  @override
  final String lga;
  @override
  final String stayPeriod;
  @override
  final List<Value> residences;
  @override
  final List<Value> states;
  @override
  final List<Value> lgas;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess;

  @override
  String toString() {
    return 'ResidenceState(userDetails: $userDetails, typeOfResidence: $typeOfResidence, currentAddress: $currentAddress, state: $state, lga: $lga, stayPeriod: $stayPeriod, residences: $residences, states: $states, lgas: $lgas, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitResidenceFailureOrSuccess: $submitResidenceFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResidenceState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.typeOfResidence, typeOfResidence) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfResidence, typeOfResidence)) &&
            (identical(other.currentAddress, currentAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentAddress, currentAddress)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.lga, lga) ||
                const DeepCollectionEquality().equals(other.lga, lga)) &&
            (identical(other.stayPeriod, stayPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.stayPeriod, stayPeriod)) &&
            (identical(other.residences, residences) ||
                const DeepCollectionEquality()
                    .equals(other.residences, residences)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.lgas, lgas) ||
                const DeepCollectionEquality().equals(other.lgas, lgas)) &&
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
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(typeOfResidence) ^
      const DeepCollectionEquality().hash(currentAddress) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(lga) ^
      const DeepCollectionEquality().hash(stayPeriod) ^
      const DeepCollectionEquality().hash(residences) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(lgas) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitResidenceFailureOrSuccess);

  @override
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith =>
      __$ResidenceStateCopyWithImpl<_ResidenceState>(this, _$identity);
}

abstract class _ResidenceState implements ResidenceState {
  const factory _ResidenceState(
          {UserDetailsRequest userDetails,
          @required
              String typeOfResidence,
          @required
              String currentAddress,
          @required
              String state,
          @required
              String lga,
          @required
              String stayPeriod,
          @required
              List<Value> residences,
          @required
              List<Value> states,
          @required
              List<Value> lgas,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess}) =
      _$_ResidenceState;

  @override
  UserDetailsRequest get userDetails;
  @override
  String get typeOfResidence;
  @override
  String get currentAddress;
  @override
  String get state;
  @override
  String get lga;
  @override
  String get stayPeriod;
  @override
  List<Value> get residences;
  @override
  List<Value> get states;
  @override
  List<Value> get lgas;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitResidenceFailureOrSuccess;
  @override
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith;
}
