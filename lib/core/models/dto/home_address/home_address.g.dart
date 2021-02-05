// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeAddress _$_$_HomeAddressFromJson(Map<String, dynamic> json) {
  return _$_HomeAddress(
    stateId: json['state_id'] as String,
    address: json['address'] as String,
    typeOfResidence: json['type_of_residence'] as String,
    lgaId: json['lga_id'] as String,
    monthlyRentExpenses: json['monthly_rent_expenses'] as String,
    numberOfYears: json['number_of_years'] as String,
    homeLandmark: json['home_landmark'] as String,
    homeAddress: json['home_address'] as String,
    homeState: json['home_state'] as String,
    homeLga: json['home_lga'] as String,
    homeCountry: json['home_country'] as String,
    timeAtCurrentAddress: json['time_at_current_address'] as String,
    natureOfAccommodation: json['nature_of_accomodation'] as String,
    homeCountryText: json['home_country_text'] as String,
    homeStateText: json['home_state_text'] as String,
    homeLgaText: json['home_lga_text'] as String,
    residentYears: json['resident_years'] as String,
  );
}

Map<String, dynamic> _$_$_HomeAddressToJson(_$_HomeAddress instance) =>
    <String, dynamic>{
      'state_id': instance.stateId,
      'address': instance.address,
      'type_of_residence': instance.typeOfResidence,
      'lga_id': instance.lgaId,
      'monthly_rent_expenses': instance.monthlyRentExpenses,
      'number_of_years': instance.numberOfYears,
      'home_landmark': instance.homeLandmark,
      'home_address': instance.homeAddress,
      'home_state': instance.homeState,
      'home_lga': instance.homeLga,
      'home_country': instance.homeCountry,
      'time_at_current_address': instance.timeAtCurrentAddress,
      'nature_of_accomodation': instance.natureOfAccommodation,
      'home_country_text': instance.homeCountryText,
      'home_state_text': instance.homeStateText,
      'home_lga_text': instance.homeLgaText,
      'resident_years': instance.residentYears,
    };
