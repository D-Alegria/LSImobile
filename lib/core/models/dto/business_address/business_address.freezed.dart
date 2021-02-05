// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'business_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BusinessAddress _$BusinessAddressFromJson(Map<String, dynamic> json) {
  return _BusinessAddress.fromJson(json);
}

/// @nodoc
class _$BusinessAddressTearOff {
  const _$BusinessAddressTearOff();

// ignore: unused_element
  _BusinessAddress call(
      {@JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'address_type_text') String addressTypeText,
      @JsonKey(name: 'time_at_current_address') String timeAtCurrentAddress,
      String address,
      String state,
      String lga,
      @JsonKey(name: 'home_state_text') String homeStateText,
      @JsonKey(name: 'home_lga_text') String homeLgaText}) {
    return _BusinessAddress(
      addressType: addressType,
      addressTypeText: addressTypeText,
      timeAtCurrentAddress: timeAtCurrentAddress,
      address: address,
      state: state,
      lga: lga,
      homeStateText: homeStateText,
      homeLgaText: homeLgaText,
    );
  }

// ignore: unused_element
  BusinessAddress fromJson(Map<String, Object> json) {
    return BusinessAddress.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BusinessAddress = _$BusinessAddressTearOff();

/// @nodoc
mixin _$BusinessAddress {
  @JsonKey(name: 'address_type')
  String get addressType;
  @JsonKey(name: 'address_type_text')
  String get addressTypeText;
  @JsonKey(name: 'time_at_current_address')
  String get timeAtCurrentAddress;
  String get address;
  String get state;
  String get lga;
  @JsonKey(name: 'home_state_text')
  String get homeStateText;
  @JsonKey(name: 'home_lga_text')
  String get homeLgaText;

  Map<String, dynamic> toJson();
  $BusinessAddressCopyWith<BusinessAddress> get copyWith;
}

/// @nodoc
abstract class $BusinessAddressCopyWith<$Res> {
  factory $BusinessAddressCopyWith(
          BusinessAddress value, $Res Function(BusinessAddress) then) =
      _$BusinessAddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'address_type_text') String addressTypeText,
      @JsonKey(name: 'time_at_current_address') String timeAtCurrentAddress,
      String address,
      String state,
      String lga,
      @JsonKey(name: 'home_state_text') String homeStateText,
      @JsonKey(name: 'home_lga_text') String homeLgaText});
}

/// @nodoc
class _$BusinessAddressCopyWithImpl<$Res>
    implements $BusinessAddressCopyWith<$Res> {
  _$BusinessAddressCopyWithImpl(this._value, this._then);

  final BusinessAddress _value;
  // ignore: unused_field
  final $Res Function(BusinessAddress) _then;

  @override
  $Res call({
    Object addressType = freezed,
    Object addressTypeText = freezed,
    Object timeAtCurrentAddress = freezed,
    Object address = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object homeStateText = freezed,
    Object homeLgaText = freezed,
  }) {
    return _then(_value.copyWith(
      addressType:
          addressType == freezed ? _value.addressType : addressType as String,
      addressTypeText: addressTypeText == freezed
          ? _value.addressTypeText
          : addressTypeText as String,
      timeAtCurrentAddress: timeAtCurrentAddress == freezed
          ? _value.timeAtCurrentAddress
          : timeAtCurrentAddress as String,
      address: address == freezed ? _value.address : address as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      homeStateText: homeStateText == freezed
          ? _value.homeStateText
          : homeStateText as String,
      homeLgaText:
          homeLgaText == freezed ? _value.homeLgaText : homeLgaText as String,
    ));
  }
}

/// @nodoc
abstract class _$BusinessAddressCopyWith<$Res>
    implements $BusinessAddressCopyWith<$Res> {
  factory _$BusinessAddressCopyWith(
          _BusinessAddress value, $Res Function(_BusinessAddress) then) =
      __$BusinessAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'address_type_text') String addressTypeText,
      @JsonKey(name: 'time_at_current_address') String timeAtCurrentAddress,
      String address,
      String state,
      String lga,
      @JsonKey(name: 'home_state_text') String homeStateText,
      @JsonKey(name: 'home_lga_text') String homeLgaText});
}

/// @nodoc
class __$BusinessAddressCopyWithImpl<$Res>
    extends _$BusinessAddressCopyWithImpl<$Res>
    implements _$BusinessAddressCopyWith<$Res> {
  __$BusinessAddressCopyWithImpl(
      _BusinessAddress _value, $Res Function(_BusinessAddress) _then)
      : super(_value, (v) => _then(v as _BusinessAddress));

  @override
  _BusinessAddress get _value => super._value as _BusinessAddress;

  @override
  $Res call({
    Object addressType = freezed,
    Object addressTypeText = freezed,
    Object timeAtCurrentAddress = freezed,
    Object address = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object homeStateText = freezed,
    Object homeLgaText = freezed,
  }) {
    return _then(_BusinessAddress(
      addressType:
          addressType == freezed ? _value.addressType : addressType as String,
      addressTypeText: addressTypeText == freezed
          ? _value.addressTypeText
          : addressTypeText as String,
      timeAtCurrentAddress: timeAtCurrentAddress == freezed
          ? _value.timeAtCurrentAddress
          : timeAtCurrentAddress as String,
      address: address == freezed ? _value.address : address as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      homeStateText: homeStateText == freezed
          ? _value.homeStateText
          : homeStateText as String,
      homeLgaText:
          homeLgaText == freezed ? _value.homeLgaText : homeLgaText as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_BusinessAddress implements _BusinessAddress {
  _$_BusinessAddress(
      {@JsonKey(name: 'address_type') this.addressType,
      @JsonKey(name: 'address_type_text') this.addressTypeText,
      @JsonKey(name: 'time_at_current_address') this.timeAtCurrentAddress,
      this.address,
      this.state,
      this.lga,
      @JsonKey(name: 'home_state_text') this.homeStateText,
      @JsonKey(name: 'home_lga_text') this.homeLgaText});

  factory _$_BusinessAddress.fromJson(Map<String, dynamic> json) =>
      _$_$_BusinessAddressFromJson(json);

  @override
  @JsonKey(name: 'address_type')
  final String addressType;
  @override
  @JsonKey(name: 'address_type_text')
  final String addressTypeText;
  @override
  @JsonKey(name: 'time_at_current_address')
  final String timeAtCurrentAddress;
  @override
  final String address;
  @override
  final String state;
  @override
  final String lga;
  @override
  @JsonKey(name: 'home_state_text')
  final String homeStateText;
  @override
  @JsonKey(name: 'home_lga_text')
  final String homeLgaText;

  @override
  String toString() {
    return 'BusinessAddress(addressType: $addressType, addressTypeText: $addressTypeText, timeAtCurrentAddress: $timeAtCurrentAddress, address: $address, state: $state, lga: $lga, homeStateText: $homeStateText, homeLgaText: $homeLgaText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BusinessAddress &&
            (identical(other.addressType, addressType) ||
                const DeepCollectionEquality()
                    .equals(other.addressType, addressType)) &&
            (identical(other.addressTypeText, addressTypeText) ||
                const DeepCollectionEquality()
                    .equals(other.addressTypeText, addressTypeText)) &&
            (identical(other.timeAtCurrentAddress, timeAtCurrentAddress) ||
                const DeepCollectionEquality().equals(
                    other.timeAtCurrentAddress, timeAtCurrentAddress)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.lga, lga) ||
                const DeepCollectionEquality().equals(other.lga, lga)) &&
            (identical(other.homeStateText, homeStateText) ||
                const DeepCollectionEquality()
                    .equals(other.homeStateText, homeStateText)) &&
            (identical(other.homeLgaText, homeLgaText) ||
                const DeepCollectionEquality()
                    .equals(other.homeLgaText, homeLgaText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addressType) ^
      const DeepCollectionEquality().hash(addressTypeText) ^
      const DeepCollectionEquality().hash(timeAtCurrentAddress) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(lga) ^
      const DeepCollectionEquality().hash(homeStateText) ^
      const DeepCollectionEquality().hash(homeLgaText);

  @override
  _$BusinessAddressCopyWith<_BusinessAddress> get copyWith =>
      __$BusinessAddressCopyWithImpl<_BusinessAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BusinessAddressToJson(this);
  }
}

abstract class _BusinessAddress implements BusinessAddress {
  factory _BusinessAddress(
      {@JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'address_type_text') String addressTypeText,
      @JsonKey(name: 'time_at_current_address') String timeAtCurrentAddress,
      String address,
      String state,
      String lga,
      @JsonKey(name: 'home_state_text') String homeStateText,
      @JsonKey(name: 'home_lga_text') String homeLgaText}) = _$_BusinessAddress;

  factory _BusinessAddress.fromJson(Map<String, dynamic> json) =
      _$_BusinessAddress.fromJson;

  @override
  @JsonKey(name: 'address_type')
  String get addressType;
  @override
  @JsonKey(name: 'address_type_text')
  String get addressTypeText;
  @override
  @JsonKey(name: 'time_at_current_address')
  String get timeAtCurrentAddress;
  @override
  String get address;
  @override
  String get state;
  @override
  String get lga;
  @override
  @JsonKey(name: 'home_state_text')
  String get homeStateText;
  @override
  @JsonKey(name: 'home_lga_text')
  String get homeLgaText;
  @override
  _$BusinessAddressCopyWith<_BusinessAddress> get copyWith;
}
