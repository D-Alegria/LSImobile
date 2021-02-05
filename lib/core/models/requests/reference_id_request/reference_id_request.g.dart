// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_id_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferenceIdRequest _$ReferenceIdRequestFromJson(Map<String, dynamic> json) {
  return ReferenceIdRequest(
    token: json['token'] as String,
    reference: json['reference'] as String,
  );
}

Map<String, dynamic> _$ReferenceIdRequestToJson(ReferenceIdRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'reference': instance.reference,
    };
