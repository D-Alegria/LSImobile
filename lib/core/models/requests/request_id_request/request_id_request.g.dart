// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_id_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestIdRequest _$RequestIdRequestFromJson(Map<String, dynamic> json) {
  return RequestIdRequest(
    token: json['token'] as String,
    requestId: json['request_id'] as String,
  );
}

Map<String, dynamic> _$RequestIdRequestToJson(RequestIdRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'request_id': instance.requestId,
    };
