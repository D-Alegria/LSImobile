// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentPortfolioData _$InvestmentPortfolioDataFromJson(
    Map<String, dynamic> json) {
  return InvestmentPortfolioData(
    today: json['today'] as String,
    savings: json['savings'] as String,
    investments: json['investments'] as String,
    investmentBalance: (json['investment_balance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$InvestmentPortfolioDataToJson(
        InvestmentPortfolioData instance) =>
    <String, dynamic>{
      'today': instance.today,
      'savings': instance.savings,
      'investments': instance.investments,
      'investment_balance': instance.investmentBalance,
    };
