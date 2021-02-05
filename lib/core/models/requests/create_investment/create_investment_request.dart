import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/dto/paystack/paystack.dart';
import 'package:lsi_mobile/core/models/dto/plan/plan.dart';

part 'create_investment_request.g.dart';

@JsonSerializable()
class CreateInvestmentRequest {
  final Plan plan;
  final Card card;
  final String token;

  final Paystack paystack;

  CreateInvestmentRequest({
    this.plan,
    this.card,
    this.token,
    this.paystack,
  });

  factory CreateInvestmentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvestmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvestmentRequestToJson(this);
}
