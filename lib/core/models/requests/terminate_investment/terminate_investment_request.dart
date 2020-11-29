import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'terminate_investment_request.g.dart';

@JsonSerializable(explicitToJson: true)
class TerminateInvestmentRequest extends TokenRequest {
  final TerminatePayLoad payLoad;

  TerminateInvestmentRequest({
    String token,this.payLoad
  }) : super(token: token);

  factory TerminateInvestmentRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminateInvestmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TerminateInvestmentRequestToJson(this);
}

@JsonSerializable()
class TerminatePayLoad {
  @JsonKey(name: "plan_id")
  final String planId;
  @JsonKey(name: "withdrawal_bank_id")
  final String withdrawalBankId;
  final String amount;

  TerminatePayLoad({this.amount, this.planId, this.withdrawalBankId});

  factory TerminatePayLoad.fromJson(Map<String, dynamic> json) =>
      _$TerminatePayLoadFromJson(json);

  Map<String, dynamic> toJson() => _$TerminatePayLoadToJson(this);
}
