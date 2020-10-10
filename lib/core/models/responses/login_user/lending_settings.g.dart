// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lending_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LendingSettings _$LendingSettingsFromJson(Map<String, dynamic> json) {
  return LendingSettings(
    defaultInterestRate: json['DEFAULT_INTEREST_RATE'] as String,
    maximumRequestPrincipal: json['MAXIMUM_REQUEST_PRINCIPAL'] as String,
    preferredOccupationList: (json['PREFERRED_OCCUPATION_LIST'] as List)
        ?.map((e) => e as String)
        ?.toList(),
  );
}

Map<String, dynamic> _$LendingSettingsToJson(LendingSettings instance) =>
    <String, dynamic>{
      'DEFAULT_INTEREST_RATE': instance.defaultInterestRate,
      'MAXIMUM_REQUEST_PRINCIPAL': instance.maximumRequestPrincipal,
      'PREFERRED_OCCUPATION_LIST': instance.preferredOccupationList,
    };
