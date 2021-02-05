// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_bvn_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyBVNOtpResponse _$VerifyBVNOtpResponseFromJson(Map<String, dynamic> json) {
  return VerifyBVNOtpResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    response: json['response'] == null
        ? null
        : BvnResponse.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerifyBVNOtpResponseToJson(
        VerifyBVNOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'response': instance.response,
    };
