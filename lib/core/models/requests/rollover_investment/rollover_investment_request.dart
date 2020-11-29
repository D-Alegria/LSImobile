import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'rollover_investment_request.g.dart';

@JsonSerializable(explicitToJson: true)
class RollOverInvestmentRequest extends TokenRequest {
  final RollOverPayLoad payLoad;

  RollOverInvestmentRequest({String token, this.payLoad}) : super(token: token);

  factory RollOverInvestmentRequest.fromJson(Map<String, dynamic> json) =>
      _$RollOverInvestmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RollOverInvestmentRequestToJson(this);
}

@JsonSerializable()
class RollOverPayLoad {
  @JsonKey(name: "plan_id")
  final String planId;
  final String duration;

  RollOverPayLoad({this.planId, this.duration});

  factory RollOverPayLoad.fromJson(Map<String, dynamic> json) =>
      _$RollOverPayLoadFromJson(json);

  Map<String, dynamic> toJson() => _$RollOverPayLoadToJson(this);
}
