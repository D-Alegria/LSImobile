import 'package:json_annotation/json_annotation.dart';

part 'operating_expenses.g.dart';

@JsonSerializable(nullable: false)
class OperatingExpenses {
  @JsonKey(name: "bank_loans")
  final String bankLoans;
  @JsonKey(name: "salaries_and_wages")
  final String salariesAndWages;
  final String assets;
  final String insurance;
  @JsonKey(name: "office_rent")
  final String officeRent;
  @JsonKey(name: "power_and_fuel")
  final String powerAndFuel;
  @JsonKey(name: "maintenance_expense")
  final String maintenanceExpense;
  final String security;
  @JsonKey(name: "phone_and_communication")
  final String phoneAndCommunication;
  @JsonKey(name: "other_expenses")
  final String otherExpenses;

  OperatingExpenses({
    this.bankLoans,
    this.salariesAndWages,
    this.assets,
    this.insurance,
    this.officeRent,
    this.powerAndFuel,
    this.maintenanceExpense,
    this.security,
    this.phoneAndCommunication,
    this.otherExpenses,
  });

  factory OperatingExpenses.fromJson(Map<String, dynamic> json) =>
      _$OperatingExpensesFromJson(json);

  Map<String, dynamic> toJson() => _$OperatingExpensesToJson(this);
}
