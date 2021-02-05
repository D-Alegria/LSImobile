import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';

part 'loan_schedule_response.g.dart';

@JsonSerializable()
class LoanScheduleResponse {
  final bool status;
  final String message;
  final List<Schedule> data;

  LoanScheduleResponse({this.status, this.message, this.data});

  factory LoanScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$LoanScheduleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoanScheduleResponseToJson(this);
}
