// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_portfolio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentPortfolioResponse _$InvestmentPortfolioResponseFromJson(
    Map<String, dynamic> json) {
  return InvestmentPortfolioResponse(
    data: json['data'] == null
        ? null
        : InvestmentPortfolioData.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InvestmentPortfolioResponseToJson(
        InvestmentPortfolioResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
