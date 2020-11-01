// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCardsResponse _$GetCardsResponseFromJson(Map<String, dynamic> json) {
  return GetCardsResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Card.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responseCode: json['response_code'] as String,
  );
}

Map<String, dynamic> _$GetCardsResponseToJson(GetCardsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'response_code': instance.responseCode,
    };
