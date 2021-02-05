// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOTPRequest _$SendOTPRequestFromJson(Map<String, dynamic> json) {
  return SendOTPRequest(
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$SendOTPRequestToJson(SendOTPRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };
