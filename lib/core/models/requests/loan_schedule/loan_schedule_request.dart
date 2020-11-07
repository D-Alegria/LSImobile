import 'package:json_annotation/json_annotation.dart';

part 'loan_schedule_request.g.dart';

@JsonSerializable()
class LoanScheduleRequest {
  final String token;
  @JsonKey(name: "request_id")
  final String requestId;

  LoanScheduleRequest({this.token, this.requestId});

  factory LoanScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$LoanScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoanScheduleRequestToJson(this);
}
