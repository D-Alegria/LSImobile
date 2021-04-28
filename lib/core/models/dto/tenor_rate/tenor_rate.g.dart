// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenor_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenorRate _$TenorRateFromJson(Map<String, dynamic> json) {
  return TenorRate(
    rate: (json['rate'] as num)?.toDouble(),
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$TenorRateToJson(TenorRate instance) => <String, dynamic>{
      'duration': instance.duration,
      'rate': instance.rate,
    };
