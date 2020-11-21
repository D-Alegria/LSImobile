// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_loan_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeLoanPaymentRequest _$MakeLoanPaymentRequestFromJson(
    Map<String, dynamic> json) {
  return MakeLoanPaymentRequest(
    reference: json['reference'] as String,
    requestId: json['request_id'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$MakeLoanPaymentRequestToJson(
        MakeLoanPaymentRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'request_id': instance.requestId,
      'reference': instance.reference,
    };
