// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lending_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LendingSettings _$LendingSettingsFromJson(Map<String, dynamic> json) {
  return LendingSettings(
    defaultInterestRate: json['defaultInterestRate'] as String,
    maximumRequestPrincipal: json['maximumRequestPrincipal'] as String,
    preferredOccupationList: (json['preferredOccupationList'] as List)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$LendingSettingsToJson(LendingSettings instance) =>
    <String, dynamic>{
      'defaultInterestRate': instance.defaultInterestRate,
      'maximumRequestPrincipal': instance.maximumRequestPrincipal,
      'preferredOccupationList': instance.preferredOccupationList,
    };
