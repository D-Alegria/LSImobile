// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expenses _$_$_ExpensesFromJson(Map<String, dynamic> json) {
  return _$_Expenses(
    monthlyRentExpenses: json['monthly_rent_expenses'] as String,
    monthlyTelInternet: json['monthly_tel_internet'] as String,
    monthlyTransport: json['monthly_transport'] as String,
  );
}

Map<String, dynamic> _$_$_ExpensesToJson(_$_Expenses instance) =>
    <String, dynamic>{
      'monthly_rent_expenses': instance.monthlyRentExpenses,
      'monthly_tel_internet': instance.monthlyTelInternet,
      'monthly_transport': instance.monthlyTransport,
    };
