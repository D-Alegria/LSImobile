// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserResponse _$RegisterUserResponseFromJson(Map<String, dynamic> json) {
  return RegisterUserResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    token: json['token'] as String,
    responseCode: json['response_code'] as String,
    userId: json['user_id'] as String,
  );
}

Map<String, dynamic> _$RegisterUserResponseToJson(
        RegisterUserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'response_code': instance.responseCode,
      'user_id': instance.userId,
    };
