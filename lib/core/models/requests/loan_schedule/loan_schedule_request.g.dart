// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanScheduleRequest _$LoanScheduleRequestFromJson(Map<String, dynamic> json) {
  return LoanScheduleRequest(
    token: json['token'] as String,
    requestId: json['request_id'] as String,
  );
}

Map<String, dynamic> _$LoanScheduleRequestToJson(
        LoanScheduleRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'request_id': instance.requestId,
    };
