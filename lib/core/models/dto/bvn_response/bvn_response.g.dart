// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bvn_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BvnResponse _$BvnResponseFromJson(Map<String, dynamic> json) {
  return BvnResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : BvnData.fromJson(json['data'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    validation: json['validation'] == null
        ? null
        : Validation.fromJson(json['validation'] as Map<String, dynamic>),
    validationType: json['validation_type'] as String,
    txnRef: json['TXN_REF'] as String,
    percent: json['percent'] as int,
    otp: json['otp'] as int,
  );
}

Map<String, dynamic> _$BvnResponseToJson(BvnResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
      'validation': instance.validation,
      'validation_type': instance.validationType,
      'TXN_REF': instance.txnRef,
      'percent': instance.percent,
      'otp': instance.otp,
    };
