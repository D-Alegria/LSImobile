// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expenses _$ExpensesFromJson(Map<String, dynamic> json) {
  return Expenses(
    monthlyRentExpenses: json['monthly_rent_expenses'] as String,
    monthlyTelInternet: json['monthly_tel_internet'] as String,
    monthlyTransport: json['monthly_transport'] as String,
  );
}

Map<String, dynamic> _$ExpensesToJson(Expenses instance) => <String, dynamic>{
      'monthly_rent_expenses': instance.monthlyRentExpenses,
      'monthly_tel_internet': instance.monthlyTelInternet,
      'monthly_transport': instance.monthlyTransport,
    };
