import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expenses.freezed.dart';

part 'expenses.g.dart';

@freezed
abstract class Expenses with _$Expenses {
  @JsonSerializable(explicitToJson: true)
  factory Expenses({
    @nullable
    @JsonKey(name: "monthly_rent_expenses")
        String monthlyRentExpenses,
    @nullable @JsonKey(name: "monthly_tel_internet") String monthlyTelInternet,
    @nullable @JsonKey(name: "monthly_transport") String monthlyTransport,
    @nullable
    @JsonKey(name: "monthly_telephone_expense")
        String monthlyTelephoneExpense,
    @nullable
    @JsonKey(name: "monthly_transport_expense")
        String monthlyTransportExpense,
    @nullable @JsonKey(name: "number_of_dependants") String numberOfDependants,
    @nullable @JsonKey(name: "monthly_repayments") String monthlyRepayments,
    @nullable @JsonKey(name: "has_external_loan") bool hasExternalLoan,
  }) = _Expenses;

  factory Expenses.fromJson(Map<String, dynamic> json) =>
      _$ExpensesFromJson(json);
}
