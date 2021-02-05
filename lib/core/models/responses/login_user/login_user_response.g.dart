// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserResponse _$LoginUserResponseFromJson(Map<String, dynamic> json) {
  return LoginUserResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    token: json['token'] as String,
    userId: json['user_id'] as String,
    lendingSettings: json['lending_settings'] == null
        ? null
        : LendingSettings.fromJson(
            json['lending_settings'] as Map<String, dynamic>),
    validations: json['validations'] == null
        ? null
        : Validations.fromJson(json['validations'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    isSuspended: json['is_suspended'] as bool,
    suspendedTill: json['suspended_till'] as String,
    responseCode: json['response_code'] as String,
  );
}

Map<String, dynamic> _$LoginUserResponseToJson(LoginUserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'user_id': instance.userId,
      'lending_settings': instance.lendingSettings,
      'validations': instance.validations,
      'data': instance.data,
      'is_suspended': instance.isSuspended,
      'suspended_till': instance.suspendedTill,
      'response_code': instance.responseCode,
    };
