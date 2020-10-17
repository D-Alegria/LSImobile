import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'investment_details.g.dart';

@JsonSerializable(nullable: false)
class InvestmentDetailsRequest extends TokenRequest {
  @JsonKey(name: "request_id")
  final String requestId;

  InvestmentDetailsRequest({this.requestId});

  factory InvestmentDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$InvestmentDetailsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentDetailsRequestToJson(this);
}
