import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';

part 'investment_portfolio_response.g.dart';

@JsonSerializable()
class InvestmentResponse {
  final bool status;
  final List<Investment> loans;
  final String message;

  InvestmentResponse({this.message, this.status, this.loans});

  factory InvestmentResponse.fromJson(Map<String, dynamic> json) =>
      _$InvestmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentResponseToJson(this);
}
