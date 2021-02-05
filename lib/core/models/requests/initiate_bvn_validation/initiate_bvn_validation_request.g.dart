// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_bvn_validation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitiateBVNValidationRequest _$InitiateBVNValidationRequestFromJson(
    Map<String, dynamic> json) {
  return InitiateBVNValidationRequest(
    bvn: json['bvn'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
  );
}

Map<String, dynamic> _$InitiateBVNValidationRequestToJson(
        InitiateBVNValidationRequest instance) =>
    <String, dynamic>{
      'bvn': instance.bvn,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
