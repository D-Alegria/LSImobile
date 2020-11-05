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
    monthlyTelephoneExpense: json['monthly_telephone_expense'] as String,
    monthlyTransportExpense: json['monthly_transport_expense'] as String,
    numberOfDependants: json['number_of_dependants'] as String,
    monthlyRepayments: json['monthly_repayments'] as String,
    hasExternalLoan: json['has_external_loan'] as bool,
  );
}

Map<String, dynamic> _$_$_ExpensesToJson(_$_Expenses instance) =>
    <String, dynamic>{
      'monthly_rent_expenses': instance.monthlyRentExpenses,
      'monthly_tel_internet': instance.monthlyTelInternet,
      'monthly_transport': instance.monthlyTransport,
      'monthly_telephone_expense': instance.monthlyTelephoneExpense,
      'monthly_transport_expense': instance.monthlyTransportExpense,
      'number_of_dependants': instance.numberOfDependants,
      'monthly_repayments': instance.monthlyRepayments,
      'has_external_loan': instance.hasExternalLoan,
    };
