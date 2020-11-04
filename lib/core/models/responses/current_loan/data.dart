import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class CurrentLoanData {
  final List loanHistory;
  final List currentLoan;
  @JsonKey(name: "recent_payment")
  final List recentPayment;

  CurrentLoanData({this.loanHistory, this.currentLoan, this.recentPayment});

  factory CurrentLoanData.fromJson(Map<String, dynamic> json) =>
      _$CurrentLoanDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLoanDataToJson(this);
}