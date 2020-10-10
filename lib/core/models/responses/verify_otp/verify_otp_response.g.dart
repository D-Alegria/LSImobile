// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOTPResponse _$VerifyOTPResponseFromJson(Map<String, dynamic> json) {
  return VerifyOTPResponse(
    status: json['status'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$VerifyOTPResponseToJson(VerifyOTPResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
