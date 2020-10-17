// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeAddress _$HomeAddressFromJson(Map<String, dynamic> json) {
  return HomeAddress(
    homeLandmark: json['home_landmark'] as String,
    homeAddress: json['home_address'] as String,
    homeState: json['home_state'] as String,
    homeLga: json['home_lga'] as String,
    homeCountry: json['home_country'] as String,
    timeAtCurrentAddress: json['time_at_current_address'] as String,
    natureOfAccomodation: json['nature_of_accomodation'] as String,
    homeCountryText: json['home_country_text'] as String,
    homeStateText: json['home_state_text'] as String,
    homeLgaText: json['home_lga_text'] as String,
    residentYears: json['resident_years'] as String,
  );
}

Map<String, dynamic> _$HomeAddressToJson(HomeAddress instance) =>
    <String, dynamic>{
      'home_landmark': instance.homeLandmark,
      'home_address': instance.homeAddress,
      'home_state': instance.homeState,
      'home_lga': instance.homeLga,
      'home_country': instance.homeCountry,
      'time_at_current_address': instance.timeAtCurrentAddress,
      'nature_of_accomodation': instance.natureOfAccomodation,
      'home_country_text': instance.homeCountryText,
      'home_state_text': instance.homeStateText,
      'home_lga_text': instance.homeLgaText,
      'resident_years': instance.residentYears,
    };
