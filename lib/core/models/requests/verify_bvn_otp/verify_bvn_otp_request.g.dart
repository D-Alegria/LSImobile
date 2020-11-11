// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_bvn_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyBVNOtpRequest _$VerifyBVNOtpRequestFromJson(Map<String, dynamic> json) {
  return VerifyBVNOtpRequest(
    txn: json['txn'] as String,
    otp: json['otp'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$VerifyBVNOtpRequestToJson(
        VerifyBVNOtpRequest instance) =>
    <String, dynamic>{
      'txn': instance.txn,
      'token': instance.token,
      'otp': instance.otp,
    };
