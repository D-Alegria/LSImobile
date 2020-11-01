import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class InvestmentPortfolioData {
  final String today;
  final String savings;
  final String investments;
  @JsonKey(name: "investment_balance")
  final double investmentBalance;

  InvestmentPortfolioData({
    this.today,
    this.savings,
    this.investments,
    this.investmentBalance,
  });

  factory InvestmentPortfolioData.fromJson(Map<String, dynamic> json) =>
      _$InvestmentPortfolioDataFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentPortfolioDataToJson(this);
}
