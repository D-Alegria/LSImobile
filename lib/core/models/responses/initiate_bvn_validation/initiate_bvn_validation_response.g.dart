// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_bvn_validation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitiateBVNValidationResponse _$InitiateBVNValidationResponseFromJson(
    Map<String, dynamic> json) {
  return InitiateBVNValidationResponse(
    response: json['response'] as String,
    status: json['status'] as bool,
    data: json['data'] == null
        ? null
        : BvnResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InitiateBVNValidationResponseToJson(
        InitiateBVNValidationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'response': instance.response,
    };
