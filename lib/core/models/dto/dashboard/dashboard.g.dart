// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dashboard _$_$_DashboardFromJson(Map<String, dynamic> json) {
  return _$_Dashboard(
    totalLoans: json['total_loans'] as String,
    activeLoans: json['active_loans'] as String,
    pendingPayments: json['pending_payments'],
  );
}

Map<String, dynamic> _$_$_DashboardToJson(_$_Dashboard instance) =>
    <String, dynamic>{
      'total_loans': instance.totalLoans,
      'active_loans': instance.activeLoans,
      'pending_payments': instance.pendingPayments,
    };
