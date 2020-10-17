import 'package:json_annotation/json_annotation.dart';

part 'business_income.g.dart';

@JsonSerializable(nullable: false)
class BusinessIncome {
  @JsonKey(name: "average_monthly_sales_income")
  final String averageMonthlySalesIncome;
  @JsonKey(name: "average_income_from_services")
  final String averageIncomeFromServices;
  @JsonKey(name: "average_income_from_other_services")
  final String averageIncomeFromOtherServices;
  @JsonKey(name: "gross_monthly_income")
  final String grossMonthlyIncome;
  @JsonKey(name: "average_cost_of_goods_sold")
  final String averageCostOfGoodsSold;
  @JsonKey(name: "direct_labour_costs")
  final String directLabourCosts;
  final String commissions;

  BusinessIncome({
    this.averageMonthlySalesIncome,
    this.averageIncomeFromServices,
    this.averageIncomeFromOtherServices,
    this.grossMonthlyIncome,
    this.averageCostOfGoodsSold,
    this.directLabourCosts,
    this.commissions,
  });

  factory BusinessIncome.fromJson(Map<String, dynamic> json) =>
      _$BusinessIncomeFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessIncomeToJson(this);
}
