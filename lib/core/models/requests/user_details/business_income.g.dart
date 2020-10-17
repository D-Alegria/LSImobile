// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessIncome _$BusinessIncomeFromJson(Map<String, dynamic> json) {
  return BusinessIncome(
    averageMonthlySalesIncome: json['average_monthly_sales_income'] as String,
    averageIncomeFromServices: json['average_income_from_services'] as String,
    averageIncomeFromOtherServices:
        json['average_income_from_other_services'] as String,
    grossMonthlyIncome: json['gross_monthly_income'] as String,
    averageCostOfGoodsSold: json['average_cost_of_goods_sold'] as String,
    directLabourCosts: json['direct_labour_costs'] as String,
    commissions: json['commissions'] as String,
  );
}

Map<String, dynamic> _$BusinessIncomeToJson(BusinessIncome instance) =>
    <String, dynamic>{
      'average_monthly_sales_income': instance.averageMonthlySalesIncome,
      'average_income_from_services': instance.averageIncomeFromServices,
      'average_income_from_other_services':
          instance.averageIncomeFromOtherServices,
      'gross_monthly_income': instance.grossMonthlyIncome,
      'average_cost_of_goods_sold': instance.averageCostOfGoodsSold,
      'direct_labour_costs': instance.directLabourCosts,
      'commissions': instance.commissions,
    };
