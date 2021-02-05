// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollover_investment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RollOverInvestmentRequest _$RollOverInvestmentRequestFromJson(
    Map<String, dynamic> json) {
  return RollOverInvestmentRequest(
    token: json['token'] as String,
    payLoad: json['payLoad'] == null
        ? null
        : RollOverPayLoad.fromJson(json['payLoad'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RollOverInvestmentRequestToJson(
        RollOverInvestmentRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'payLoad': instance.payLoad?.toJson(),
    };

RollOverPayLoad _$RollOverPayLoadFromJson(Map<String, dynamic> json) {
  return RollOverPayLoad(
    planId: json['plan_id'] as String,
    duration: json['duration'] as String,
  );
}

Map<String, dynamic> _$RollOverPayLoadToJson(RollOverPayLoad instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'duration': instance.duration,
    };
