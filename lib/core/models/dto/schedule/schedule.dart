import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';

@JsonSerializable()
class Schedule {
  final String period;
  @JsonKey(name: "repayment_date")
  final String repaymentDate;
  @JsonKey(name: "term_repayment")
  final String termRepayment;
  @JsonKey(name: "how_much_remaining")
  final String howMuchRemaining;
  @JsonKey(name: "how_much_paid")
  final String howMuchPaid;
  @JsonKey(name: "total_fines_so_far")
  final String totalFinesSoFar;
  @JsonKey(name: "principal_repayment")
  final String principalRepayment;
  @JsonKey(name: "interest_repayment")
  final String interestRepayment;
  @JsonKey(name: "outstanding_principal")
  final String outstandingPrincipal;
  @JsonKey(name: "is_paid")
  final String isPaid;
  @JsonKey(name: "date_paid")
  final String datePaid;

  Schedule({
    this.period,
    this.repaymentDate,
    this.termRepayment,
    this.howMuchRemaining,
    this.howMuchPaid,
    this.totalFinesSoFar,
    this.principalRepayment,
    this.interestRepayment,
    this.outstandingPrincipal,
    this.isPaid,
    this.datePaid,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}

@JsonSerializable()
class RepaymentSchedule {
  @JsonKey(name: "PERIOD")
  final String period;
  @JsonKey(name: "REPAYMENT_DATE")
  final String repaymentDate;
  @JsonKey(name: "REPAYMENT_SCHEDULE_ID")
  final String repaymentScheduleId;
  @JsonKey(name: "TERM_REPAYMENT")
  final String termRepayment;
  @JsonKey(name: "IS_PAID")
  final String isPaid;
  @JsonKey(name: "HOW_MUCH_REMAINING")
  final String howMuchRemaining;
  final String overdue;

  RepaymentSchedule({
    this.period,
    this.repaymentDate,
    this.termRepayment,
    this.howMuchRemaining,
    this.repaymentScheduleId,
    this.isPaid,
    this.overdue,
  });

  factory RepaymentSchedule.fromJson(Map<String, dynamic> json) =>
      _$RepaymentScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$RepaymentScheduleToJson(this);
}
