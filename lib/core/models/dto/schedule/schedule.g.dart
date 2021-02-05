// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return Schedule(
    period: json['period'] as String,
    repaymentDate: json['repayment_date'] as String,
    termRepayment: json['term_repayment'] as String,
    howMuchRemaining: json['how_much_remaining'] as String,
    howMuchPaid: json['how_much_paid'] as String,
    totalFinesSoFar: json['total_fines_so_far'] as String,
    principalRepayment: json['principal_repayment'] as String,
    interestRepayment: json['interest_repayment'] as String,
    outstandingPrincipal: json['outstanding_principal'] as String,
    isPaid: json['is_paid'] as String,
    datePaid: json['date_paid'] as String,
  );
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'period': instance.period,
      'repayment_date': instance.repaymentDate,
      'term_repayment': instance.termRepayment,
      'how_much_remaining': instance.howMuchRemaining,
      'how_much_paid': instance.howMuchPaid,
      'total_fines_so_far': instance.totalFinesSoFar,
      'principal_repayment': instance.principalRepayment,
      'interest_repayment': instance.interestRepayment,
      'outstanding_principal': instance.outstandingPrincipal,
      'is_paid': instance.isPaid,
      'date_paid': instance.datePaid,
    };

RepaymentSchedule _$RepaymentScheduleFromJson(Map<String, dynamic> json) {
  return RepaymentSchedule(
    period: json['PERIOD'] as String,
    repaymentDate: json['REPAYMENT_DATE'] as String,
    termRepayment: json['TERM_REPAYMENT'] as String,
    howMuchRemaining: json['HOW_MUCH_REMAINING'] as String,
    repaymentScheduleId: json['REPAYMENT_SCHEDULE_ID'] as String,
    isPaid: json['IS_PAID'] as String,
    overdue: json['overdue'] as bool,
  );
}

Map<String, dynamic> _$RepaymentScheduleToJson(RepaymentSchedule instance) =>
    <String, dynamic>{
      'PERIOD': instance.period,
      'REPAYMENT_DATE': instance.repaymentDate,
      'REPAYMENT_SCHEDULE_ID': instance.repaymentScheduleId,
      'TERM_REPAYMENT': instance.termRepayment,
      'IS_PAID': instance.isPaid,
      'HOW_MUCH_REMAINING': instance.howMuchRemaining,
      'overdue': instance.overdue,
    };
