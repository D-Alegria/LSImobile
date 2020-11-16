// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_investment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInvestmentResponse _$CreateInvestmentResponseFromJson(
    Map<String, dynamic> json) {
  return CreateInvestmentResponse(
    status: json['status'] as bool,
    eligible: json['eligible'] as bool,
    message: json['message'] as String,
    responseCode: json['responsecode'] as String,
  );
}

Map<String, dynamic> _$CreateInvestmentResponseToJson(
        CreateInvestmentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'eligible': instance.eligible,
      'message': instance.message,
      'responsecode': instance.responseCode,
    };
