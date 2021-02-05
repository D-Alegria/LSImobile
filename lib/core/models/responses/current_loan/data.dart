import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';

part 'data.g.dart';

@JsonSerializable()
class CurrentLoanData {
  final List<Loan> loanHistory;
  final List<Loan> currentLoan;
  @JsonKey(name: "recent_payment")
  final List recentPayment;

  CurrentLoanData({this.loanHistory, this.currentLoan, this.recentPayment});

  factory CurrentLoanData.fromJson(Map<String, dynamic> json) =>
      _$CurrentLoanDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLoanDataToJson(this);
}
