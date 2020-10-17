// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operating_expenses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatingExpenses _$OperatingExpensesFromJson(Map<String, dynamic> json) {
  return OperatingExpenses(
    bankLoans: json['bank_loans'] as String,
    salariesAndWages: json['salaries_and_wages'] as String,
    assets: json['assets'] as String,
    insurance: json['insurance'] as String,
    officeRent: json['office_rent'] as String,
    powerAndFuel: json['power_and_fuel'] as String,
    maintenanceExpense: json['maintenance_expense'] as String,
    security: json['security'] as String,
    phoneAndCommunication: json['phone_and_communication'] as String,
    otherExpenses: json['other_expenses'] as String,
  );
}

Map<String, dynamic> _$OperatingExpensesToJson(OperatingExpenses instance) =>
    <String, dynamic>{
      'bank_loans': instance.bankLoans,
      'salaries_and_wages': instance.salariesAndWages,
      'assets': instance.assets,
      'insurance': instance.insurance,
      'office_rent': instance.officeRent,
      'power_and_fuel': instance.powerAndFuel,
      'maintenance_expense': instance.maintenanceExpense,
      'security': instance.security,
      'phone_and_communication': instance.phoneAndCommunication,
      'other_expenses': instance.otherExpenses,
    };
