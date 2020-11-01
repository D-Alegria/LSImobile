// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsResponse _$UserDetailsResponseFromJson(Map<String, dynamic> json) {
  return UserDetailsResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : UserDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    responseCode: json['response_code'] as String,
  );
}

Map<String, dynamic> _$UserDetailsResponseToJson(
        UserDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'response_code': instance.responseCode,
    };
