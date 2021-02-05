// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanScheduleResponse _$LoanScheduleResponseFromJson(Map<String, dynamic> json) {
  return LoanScheduleResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LoanScheduleResponseToJson(
        LoanScheduleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
