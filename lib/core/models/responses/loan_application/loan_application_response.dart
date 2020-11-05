import 'package:json_annotation/json_annotation.dart';

part 'loan_application_response.g.dart';

@JsonSerializable()
class LoanApplicationResponse {
  final bool status;
  final bool eligible;
  final String message;
  final String responsecode;
  final String dd;

  LoanApplicationResponse({
    this.status,
    this.eligible,
    this.message,
    this.responsecode,
    this.dd,
  });

  factory LoanApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$LoanApplicationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoanApplicationResponseToJson(this);
}
