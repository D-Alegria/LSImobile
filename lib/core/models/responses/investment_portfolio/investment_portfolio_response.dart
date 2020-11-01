import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'investment_portfolio_response.g.dart';

@JsonSerializable()
class InvestmentPortfolioResponse {
  final InvestmentPortfolioData data;

  InvestmentPortfolioResponse({this.data});

  factory InvestmentPortfolioResponse.fromJson(Map<String, dynamic> json) =>
      _$InvestmentPortfolioResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentPortfolioResponseToJson(this);
}
