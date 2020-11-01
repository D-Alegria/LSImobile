import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operating_expenses.freezed.dart';

part 'operating_expenses.g.dart';

@freezed
abstract class OperatingExpenses with _$OperatingExpenses {
  @JsonSerializable(explicitToJson: true)
  factory OperatingExpenses({
    @JsonKey(name: "bank_loans") String bankLoans,
    @JsonKey(name: "salaries_and_wages") String salariesAndWages,
    String assets,
    String insurance,
    @JsonKey(name: "office_rent") String officeRent,
    @JsonKey(name: "power_and_fuel") String powerAndFuel,
    @JsonKey(name: "maintenance_expense") String maintenanceExpense,
    String security,
    @JsonKey(name: "phone_and_communication") String phoneAndCommunication,
    @JsonKey(name: "other_expenses") String otherExpenses,
  }) = _OperatingExpenses;

  factory OperatingExpenses.fromJson(Map<String, dynamic> json) =>
      _$OperatingExpensesFromJson(json);
}
