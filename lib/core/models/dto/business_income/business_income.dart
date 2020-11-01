import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_income.freezed.dart';

part 'business_income.g.dart';

@freezed
abstract class BusinessIncome with _$BusinessIncome {
  @JsonSerializable(explicitToJson: true)
  factory BusinessIncome({
    @JsonKey(name: "average_monthly_sales_income")
        String averageMonthlySalesIncome,
    @JsonKey(name: "average_income_from_services")
        String averageIncomeFromServices,
    @JsonKey(name: "average_income_from_other_services")
        String averageIncomeFromOtherServices,
    @JsonKey(name: "gross_monthly_income") String grossMonthlyIncome,
    @JsonKey(name: "average_cost_of_goods_sold") String averageCostOfGoodsSold,
    @JsonKey(name: "direct_labour_costs") String directLabourCosts,
    String commissions,
  }) = _BusinessIncome;

  factory BusinessIncome.fromJson(Map<String, dynamic> json) =>
      _$BusinessIncomeFromJson(json);
}
