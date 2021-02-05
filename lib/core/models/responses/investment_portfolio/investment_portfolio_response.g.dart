// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_portfolio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentResponse _$InvestmentResponseFromJson(Map<String, dynamic> json) {
  return InvestmentResponse(
    message: json['message'] as String,
    status: json['status'] as bool,
    loans: (json['loans'] as List)
        ?.map((e) =>
            e == null ? null : Investment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InvestmentResponseToJson(InvestmentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'loans': instance.loans,
      'message': instance.message,
    };
