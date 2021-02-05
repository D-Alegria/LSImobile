import 'package:json_annotation/json_annotation.dart';

part 'create_investment_response.g.dart';

@JsonSerializable()
class CreateInvestmentResponse {
  final bool status;
  final bool eligible;
  final String message;
  @JsonKey(name: "responsecode")
  final String responseCode;

  CreateInvestmentResponse({
    this.status,
    this.eligible,
    this.message,
    this.responseCode,
  });

  factory CreateInvestmentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateInvestmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvestmentResponseToJson(this);
}
