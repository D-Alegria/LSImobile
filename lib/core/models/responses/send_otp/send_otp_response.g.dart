// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOTPResponse _$SendOTPResponseFromJson(Map<String, dynamic> json) {
  return SendOTPResponse(
    status: json['status'] as String,
    otp: json['otp'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$SendOTPResponseToJson(SendOTPResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'otp': instance.otp,
    };
