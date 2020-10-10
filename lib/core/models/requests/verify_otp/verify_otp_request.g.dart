// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOTPRequest _$VerifyOTPRequestFromJson(Map<String, dynamic> json) {
  return VerifyOTPRequest(
    phone: json['phone'] as String,
    otp: json['otp'] as int,
  );
}

Map<String, dynamic> _$VerifyOTPRequestToJson(VerifyOTPRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otp': instance.otp,
    };
