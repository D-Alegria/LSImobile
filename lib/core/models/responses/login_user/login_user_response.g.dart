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
    userId: json['userId'] as String,
    lendingSettings: LendingSettings.fromJson(
        json['lendingSettings'] as Map<String, dynamic>),
    validations:
        Validations.fromJson(json['validations'] as Map<String, dynamic>),
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
    isSuspended: json['isSuspended'] as bool,
    suspendedTill: json['suspendedTill'] as String,
    responseCode: json['responseCode'] as String,
  );
}

Map<String, dynamic> _$LoginUserResponseToJson(LoginUserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'userId': instance.userId,
      'lendingSettings': instance.lendingSettings,
      'validations': instance.validations,
      'data': instance.data,
      'isSuspended': instance.isSuspended,
      'suspendedTill': instance.suspendedTill,
      'responseCode': instance.responseCode,
    };
