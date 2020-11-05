// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanApplicationResponse _$LoanApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return LoanApplicationResponse(
    status: json['status'] as bool,
    eligible: json['eligible'] as bool,
    message: json['message'] as String,
    responsecode: json['responsecode'] as String,
    dd: json['dd'] as String,
  );
}

Map<String, dynamic> _$LoanApplicationResponseToJson(
        LoanApplicationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'eligible': instance.eligible,
      'message': instance.message,
      'responsecode': instance.responsecode,
      'dd': instance.dd,
    };
