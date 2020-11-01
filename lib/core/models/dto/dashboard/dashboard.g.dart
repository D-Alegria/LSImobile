// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dashboard _$DashboardFromJson(Map<String, dynamic> json) {
  return Dashboard(
    totalLoans: json['total_loans'] as String,
    activeLoans: json['active_loans'] as String,
    pendingPayments: json['pending_payments'] as int,
  );
}

Map<String, dynamic> _$DashboardToJson(Dashboard instance) => <String, dynamic>{
      'total_loans': instance.totalLoans,
      'active_loans': instance.activeLoans,
      'pending_payments': instance.pendingPayments,
    };
