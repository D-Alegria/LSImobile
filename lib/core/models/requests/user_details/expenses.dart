import 'package:json_annotation/json_annotation.dart';

part 'expenses.g.dart';

@JsonSerializable(nullable: false)
class Expenses {
  @JsonKey(name: "monthly_rent_expenses")
  final String monthlyRentExpenses;
  @JsonKey(name: "monthly_tel_internet")
  final String monthlyTelInternet;
  @JsonKey(name: "monthly_transport")
  final String monthlyTransport;

  Expenses({
    this.monthlyRentExpenses,
    this.monthlyTelInternet,
    this.monthlyTransport,
  });

  factory Expenses.fromJson(Map<String, dynamic> json) =>
      _$ExpensesFromJson(json);

  Map<String, dynamic> toJson() => _$ExpensesToJson(this);
}
