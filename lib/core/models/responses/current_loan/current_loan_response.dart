import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'current_loan_response.g.dart';

@JsonSerializable()
class CurrentLoanResponse {
  final bool status;
  final String message;
  final CurrentLoanData data;
  @JsonKey(name: "response_code")
  final String responseCode;

  CurrentLoanResponse({
    this.status,
    this.message,
    this.data,
    this.responseCode,
  });

  factory CurrentLoanResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentLoanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLoanResponseToJson(this);
}
