import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'liquidate_investment_request.g.dart';

@JsonSerializable(explicitToJson: true)
class LiquidateInvestmentRequest extends TokenRequest {
  final LiquidatePayLoad payLoad;

  LiquidateInvestmentRequest({
    String token,this.payLoad
  }) : super(token: token);

  factory LiquidateInvestmentRequest.fromJson(Map<String, dynamic> json) =>
      _$LiquidateInvestmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LiquidateInvestmentRequestToJson(this);
}

@JsonSerializable()
class LiquidatePayLoad {
  @JsonKey(name: "plan_id")
  final String planId;
  @JsonKey(name: "withdrawal_bank_id")
  final String withdrawalBankId;
  final String amount;

  LiquidatePayLoad({this.amount, this.planId, this.withdrawalBankId});

  factory LiquidatePayLoad.fromJson(Map<String, dynamic> json) =>
      _$LiquidatePayLoadFromJson(json);

  Map<String, dynamic> toJson() => _$LiquidatePayLoadToJson(this);
}
