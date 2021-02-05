// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_value_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetValueResponse _$GetValueResponseFromJson(Map<String, dynamic> json) {
  return GetValueResponse(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Value.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$GetValueResponseToJson(GetValueResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
