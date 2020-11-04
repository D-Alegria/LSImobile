// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_loan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentLoanResponse _$CurrentLoanResponseFromJson(Map<String, dynamic> json) {
  return CurrentLoanResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : CurrentLoanData.fromJson(json['data'] as Map<String, dynamic>),
    responseCode: json['response_code'] as String,
  );
}

Map<String, dynamic> _$CurrentLoanResponseToJson(
        CurrentLoanResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'response_code': instance.responseCode,
    };
