// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_portfolio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentPortfolioResponse _$InvestmentPortfolioResponseFromJson(
    Map<String, dynamic> json) {
  return InvestmentPortfolioResponse(
    message: json['message'] as String,
    status: json['status'] as bool,
    loans: json['loans'] as List,
  );
}

Map<String, dynamic> _$InvestmentPortfolioResponseToJson(
        InvestmentPortfolioResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'loans': instance.loans,
      'message': instance.message,
    };
