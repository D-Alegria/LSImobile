// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeAddress _$HomeAddressFromJson(Map<String, dynamic> json) {
  return _HomeAddress.fromJson(json);
}

/// @nodoc
class _$HomeAddressTearOff {
  const _$HomeAddressTearOff();

// ignore: unused_element
  _HomeAddress call(
      {@nullable
      @JsonKey(name: 'home_landmark')
          String homeLandmark,
      @nullable
      @JsonKey(name: 'home_address')
          String homeAddress,
      @nullable
      @JsonKey(name: 'home_state')
          String homeState,
      @nullable
      @JsonKey(name: 'home_lga')
          String homeLga,
      @nullable
      @JsonKey(name: 'home_country')
          String homeCountry,
      @nullable
      @JsonKey(name: 'time_at_current_address')
          String timeAtCurrentAddress,
      @nullable
      @JsonKey(name: 'nature_of_accomodation')
          String natureOfAccomodation,
      @nullable
      @JsonKey(name: 'home_country_text')
          String homeCountryText,
      @nullable
      @JsonKey(name: 'home_state_text')
          String homeStateText,
      @nullable
      @JsonKey(name: 'home_lga_text')
          String homeLgaText,
      @nullable
      @JsonKey(name: 'resident_years')
          String residentYears}) {
    return _HomeAddress(
      homeLandmark: homeLandmark,
      homeAddress: homeAddress,
      homeState: homeState,
      homeLga: homeLga,
      homeCountry: homeCountry,
      timeAtCurrentAddress: timeAtCurrentAddress,
      natureOfAccomodation: natureOfAccomodation,
      homeCountryText: homeCountryText,
      homeStateText: homeStateText,
      homeLgaText: homeLgaText,
      residentYears: residentYears,
    );
  }

// ignore: unused_element
  HomeAddress fromJson(Map<String, Object> json) {
    return HomeAddress.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HomeAddress = _$HomeAddressTearOff();

/// @nodoc
mixin _$HomeAddress {
  @nullable
  @JsonKey(name: 'home_landmark')
  String get homeLandmark;
  @nullable
  @JsonKey(name: 'home_address')
  String get homeAddress;
  @nullable
  @JsonKey(name: 'home_state')
  String get homeState;
  @nullable
  @JsonKey(name: 'home_lga')
  String get homeLga;
  @nullable
  @JsonKey(name: 'home_country')
  String get homeCountry;
  @nullable
  @JsonKey(name: 'time_at_current_address')
  String get timeAtCurrentAddress;
  @nullable
  @JsonKey(name: 'nature_of_accomodation')
  String get natureOfAccomodation;
  @nullable
  @JsonKey(name: 'home_country_text')
  String get homeCountryText;
  @nullable
  @JsonKey(name: 'home_state_text')
  String get homeStateText;
  @nullable
  @JsonKey(name: 'home_lga_text')
  String get homeLgaText;
  @nullable
  @JsonKey(name: 'resident_years')
  String get residentYears;

  Map<String, dynamic> toJson();
  $HomeAddressCopyWith<HomeAddress> get copyWith;
}

/// @nodoc
abstract class $HomeAddressCopyWith<$Res> {
  factory $HomeAddressCopyWith(
          HomeAddress value, $Res Function(HomeAddress) then) =
      _$HomeAddressCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(name: 'home_landmark')
          String homeLandmark,
      @nullable
      @JsonKey(name: 'home_address')
          String homeAddress,
      @nullable
      @JsonKey(name: 'home_state')
          String homeState,
      @nullable
      @JsonKey(name: 'home_lga')
          String homeLga,
      @nullable
      @JsonKey(name: 'home_country')
          String homeCountry,
      @nullable
      @JsonKey(name: 'time_at_current_address')
          String timeAtCurrentAddress,
      @nullable
      @JsonKey(name: 'nature_of_accomodation')
          String natureOfAccomodation,
      @nullable
      @JsonKey(name: 'home_country_text')
          String homeCountryText,
      @nullable
      @JsonKey(name: 'home_state_text')
          String homeStateText,
      @nullable
      @JsonKey(name: 'home_lga_text')
          String homeLgaText,
      @nullable
      @JsonKey(name: 'resident_years')
          String residentYears});
}

/// @nodoc
class _$HomeAddressCopyWithImpl<$Res> implements $HomeAddressCopyWith<$Res> {
  _$HomeAddressCopyWithImpl(this._value, this._then);

  final HomeAddress _value;
  // ignore: unused_field
  final $Res Function(HomeAddress) _then;

  @override
  $Res call({
    Object homeLandmark = freezed,
    Object homeAddress = freezed,
    Object homeState = freezed,
    Object homeLga = freezed,
    Object homeCountry = freezed,
    Object timeAtCurrentAddress = freezed,
    Object natureOfAccomodation = freezed,
    Object homeCountryText = freezed,
    Object homeStateText = freezed,
    Object homeLgaText = freezed,
    Object residentYears = freezed,
  }) {
    return _then(_value.copyWith(
      homeLandmark: homeLandmark == freezed
          ? _value.homeLandmark
          : homeLandmark as String,
      homeAddress:
          homeAddress == freezed ? _value.homeAddress : homeAddress as String,
      homeState: homeState == freezed ? _value.homeState : homeState as String,
      homeLga: homeLga == freezed ? _value.homeLga : homeLga as String,
      homeCountry:
          homeCountry == freezed ? _value.homeCountry : homeCountry as String,
      timeAtCurrentAddress: timeAtCurrentAddress == freezed
          ? _value.timeAtCurrentAddress
          : timeAtCurrentAddress as String,
      natureOfAccomodation: natureOfAccomodation == freezed
          ? _value.natureOfAccomodation
          : natureOfAccomodation as String,
      homeCountryText: homeCountryText == freezed
          ? _value.homeCountryText
          : homeCountryText as String,
      homeStateText: homeStateText == freezed
          ? _value.homeStateText
          : homeStateText as String,
      homeLgaText:
          homeLgaText == freezed ? _value.homeLgaText : homeLgaText as String,
      residentYears: residentYears == freezed
          ? _value.residentYears
          : residentYears as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeAddressCopyWith<$Res>
    implements $HomeAddressCopyWith<$Res> {
  factory _$HomeAddressCopyWith(
          _HomeAddress value, $Res Function(_HomeAddress) then) =
      __$HomeAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(name: 'home_landmark')
          String homeLandmark,
      @nullable
      @JsonKey(name: 'home_address')
          String homeAddress,
      @nullable
      @JsonKey(name: 'home_state')
          String homeState,
      @nullable
      @JsonKey(name: 'home_lga')
          String homeLga,
      @nullable
      @JsonKey(name: 'home_country')
          String homeCountry,
      @nullable
      @JsonKey(name: 'time_at_current_address')
          String timeAtCurrentAddress,
      @nullable
      @JsonKey(name: 'nature_of_accomodation')
          String natureOfAccomodation,
      @nullable
      @JsonKey(name: 'home_country_text')
          String homeCountryText,
      @nullable
      @JsonKey(name: 'home_state_text')
          String homeStateText,
      @nullable
      @JsonKey(name: 'home_lga_text')
          String homeLgaText,
      @nullable
      @JsonKey(name: 'resident_years')
          String residentYears});
}

/// @nodoc
class __$HomeAddressCopyWithImpl<$Res> extends _$HomeAddressCopyWithImpl<$Res>
    implements _$HomeAddressCopyWith<$Res> {
  __$HomeAddressCopyWithImpl(
      _HomeAddress _value, $Res Function(_HomeAddress) _then)
      : super(_value, (v) => _then(v as _HomeAddress));

  @override
  _HomeAddress get _value => super._value as _HomeAddress;

  @override
  $Res call({
    Object homeLandmark = freezed,
    Object homeAddress = freezed,
    Object homeState = freezed,
    Object homeLga = freezed,
    Object homeCountry = freezed,
    Object timeAtCurrentAddress = freezed,
    Object natureOfAccomodation = freezed,
    Object homeCountryText = freezed,
    Object homeStateText = freezed,
    Object homeLgaText = freezed,
    Object residentYears = freezed,
  }) {
    return _then(_HomeAddress(
      homeLandmark: homeLandmark == freezed
          ? _value.homeLandmark
          : homeLandmark as String,
      homeAddress:
          homeAddress == freezed ? _value.homeAddress : homeAddress as String,
      homeState: homeState == freezed ? _value.homeState : homeState as String,
      homeLga: homeLga == freezed ? _value.homeLga : homeLga as String,
      homeCountry:
          homeCountry == freezed ? _value.homeCountry : homeCountry as String,
      timeAtCurrentAddress: timeAtCurrentAddress == freezed
          ? _value.timeAtCurrentAddress
          : timeAtCurrentAddress as String,
      natureOfAccomodation: natureOfAccomodation == freezed
          ? _value.natureOfAccomodation
          : natureOfAccomodation as String,
      homeCountryText: homeCountryText == freezed
          ? _value.homeCountryText
          : homeCountryText as String,
      homeStateText: homeStateText == freezed
          ? _value.homeStateText
          : homeStateText as String,
      homeLgaText:
          homeLgaText == freezed ? _value.homeLgaText : homeLgaText as String,
      residentYears: residentYears == freezed
          ? _value.residentYears
          : residentYears as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_HomeAddress implements _HomeAddress {
  _$_HomeAddress(
      {@nullable
      @JsonKey(name: 'home_landmark')
          this.homeLandmark,
      @nullable
      @JsonKey(name: 'home_address')
          this.homeAddress,
      @nullable
      @JsonKey(name: 'home_state')
          this.homeState,
      @nullable
      @JsonKey(name: 'home_lga')
          this.homeLga,
      @nullable
      @JsonKey(name: 'home_country')
          this.homeCountry,
      @nullable
      @JsonKey(name: 'time_at_current_address')
          this.timeAtCurrentAddress,
      @nullable
      @JsonKey(name: 'nature_of_accomodation')
          this.natureOfAccomodation,
      @nullable
      @JsonKey(name: 'home_country_text')
          this.homeCountryText,
      @nullable
      @JsonKey(name: 'home_state_text')
          this.homeStateText,
      @nullable
      @JsonKey(name: 'home_lga_text')
          this.homeLgaText,
      @nullable
      @JsonKey(name: 'resident_years')
          this.residentYears});

  factory _$_HomeAddress.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeAddressFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'home_landmark')
  final String homeLandmark;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  final String homeAddress;
  @override
  @nullable
  @JsonKey(name: 'home_state')
  final String homeState;
  @override
  @nullable
  @JsonKey(name: 'home_lga')
  final String homeLga;
  @override
  @nullable
  @JsonKey(name: 'home_country')
  final String homeCountry;
  @override
  @nullable
  @JsonKey(name: 'time_at_current_address')
  final String timeAtCurrentAddress;
  @override
  @nullable
  @JsonKey(name: 'nature_of_accomodation')
  final String natureOfAccomodation;
  @override
  @nullable
  @JsonKey(name: 'home_country_text')
  final String homeCountryText;
  @override
  @nullable
  @JsonKey(name: 'home_state_text')
  final String homeStateText;
  @override
  @nullable
  @JsonKey(name: 'home_lga_text')
  final String homeLgaText;
  @override
  @nullable
  @JsonKey(name: 'resident_years')
  final String residentYears;

  @override
  String toString() {
    return 'HomeAddress(homeLandmark: $homeLandmark, homeAddress: $homeAddress, homeState: $homeState, homeLga: $homeLga, homeCountry: $homeCountry, timeAtCurrentAddress: $timeAtCurrentAddress, natureOfAccomodation: $natureOfAccomodation, homeCountryText: $homeCountryText, homeStateText: $homeStateText, homeLgaText: $homeLgaText, residentYears: $residentYears)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeAddress &&
            (identical(other.homeLandmark, homeLandmark) ||
                const DeepCollectionEquality()
                    .equals(other.homeLandmark, homeLandmark)) &&
            (identical(other.homeAddress, homeAddress) ||
                const DeepCollectionEquality()
                    .equals(other.homeAddress, homeAddress)) &&
            (identical(other.homeState, homeState) ||
                const DeepCollectionEquality()
                    .equals(other.homeState, homeState)) &&
            (identical(other.homeLga, homeLga) ||
                const DeepCollectionEquality()
                    .equals(other.homeLga, homeLga)) &&
            (identical(other.homeCountry, homeCountry) ||
                const DeepCollectionEquality()
                    .equals(other.homeCountry, homeCountry)) &&
            (identical(other.timeAtCurrentAddress, timeAtCurrentAddress) ||
                const DeepCollectionEquality().equals(
                    other.timeAtCurrentAddress, timeAtCurrentAddress)) &&
            (identical(other.natureOfAccomodation, natureOfAccomodation) ||
                const DeepCollectionEquality().equals(
                    other.natureOfAccomodation, natureOfAccomodation)) &&
            (identical(other.homeCountryText, homeCountryText) ||
                const DeepCollectionEquality()
                    .equals(other.homeCountryText, homeCountryText)) &&
            (identical(other.homeStateText, homeStateText) ||
                const DeepCollectionEquality()
                    .equals(other.homeStateText, homeStateText)) &&
            (identical(other.homeLgaText, homeLgaText) ||
                const DeepCollectionEquality()
                    .equals(other.homeLgaText, homeLgaText)) &&
            (identical(other.residentYears, residentYears) ||
                const DeepCollectionEquality()
                    .equals(other.residentYears, residentYears)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeLandmark) ^
      const DeepCollectionEquality().hash(homeAddress) ^
      const DeepCollectionEquality().hash(homeState) ^
      const DeepCollectionEquality().hash(homeLga) ^
      const DeepCollectionEquality().hash(homeCountry) ^
      const DeepCollectionEquality().hash(timeAtCurrentAddress) ^
      const DeepCollectionEquality().hash(natureOfAccomodation) ^
      const DeepCollectionEquality().hash(homeCountryText) ^
      const DeepCollectionEquality().hash(homeStateText) ^
      const DeepCollectionEquality().hash(homeLgaText) ^
      const DeepCollectionEquality().hash(residentYears);

  @override
  _$HomeAddressCopyWith<_HomeAddress> get copyWith =>
      __$HomeAddressCopyWithImpl<_HomeAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeAddressToJson(this);
  }
}

abstract class _HomeAddress implements HomeAddress {
  factory _HomeAddress(
      {@nullable
      @JsonKey(name: 'home_landmark')
          String homeLandmark,
      @nullable
      @JsonKey(name: 'home_address')
          String homeAddress,
      @nullable
      @JsonKey(name: 'home_state')
          String homeState,
      @nullable
      @JsonKey(name: 'home_lga')
          String homeLga,
      @nullable
      @JsonKey(name: 'home_country')
          String homeCountry,
      @nullable
      @JsonKey(name: 'time_at_current_address')
          String timeAtCurrentAddress,
      @nullable
      @JsonKey(name: 'nature_of_accomodation')
          String natureOfAccomodation,
      @nullable
      @JsonKey(name: 'home_country_text')
          String homeCountryText,
      @nullable
      @JsonKey(name: 'home_state_text')
          String homeStateText,
      @nullable
      @JsonKey(name: 'home_lga_text')
          String homeLgaText,
      @nullable
      @JsonKey(name: 'resident_years')
          String residentYears}) = _$_HomeAddress;

  factory _HomeAddress.fromJson(Map<String, dynamic> json) =
      _$_HomeAddress.fromJson;

  @override
  @nullable
  @JsonKey(name: 'home_landmark')
  String get homeLandmark;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  String get homeAddress;
  @override
  @nullable
  @JsonKey(name: 'home_state')
  String get homeState;
  @override
  @nullable
  @JsonKey(name: 'home_lga')
  String get homeLga;
  @override
  @nullable
  @JsonKey(name: 'home_country')
  String get homeCountry;
  @override
  @nullable
  @JsonKey(name: 'time_at_current_address')
  String get timeAtCurrentAddress;
  @override
  @nullable
  @JsonKey(name: 'nature_of_accomodation')
  String get natureOfAccomodation;
  @override
  @nullable
  @JsonKey(name: 'home_country_text')
  String get homeCountryText;
  @override
  @nullable
  @JsonKey(name: 'home_state_text')
  String get homeStateText;
  @override
  @nullable
  @JsonKey(name: 'home_lga_text')
  String get homeLgaText;
  @override
  @nullable
  @JsonKey(name: 'resident_years')
  String get residentYears;
  @override
  _$HomeAddressCopyWith<_HomeAddress> get copyWith;
}
