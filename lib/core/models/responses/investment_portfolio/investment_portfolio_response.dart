import 'package:json_annotation/json_annotation.dart';

part 'investment_portfolio_response.g.dart';

@JsonSerializable()
class InvestmentPortfolioResponse {
  final bool status;
  final List loans;
  final String message;

  InvestmentPortfolioResponse({this.message, this.status, this.loans});

  factory InvestmentPortfolioResponse.fromJson(Map<String, dynamic> json) =>
      _$InvestmentPortfolioResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentPortfolioResponseToJson(this);
}
