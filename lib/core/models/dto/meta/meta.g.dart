// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    callsThisMonth: json['calls_this_month'] as int,
    freeCallsLeft: json['free_calls_left'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'calls_this_month': instance.callsThisMonth,
      'free_calls_left': instance.freeCallsLeft,
    };
