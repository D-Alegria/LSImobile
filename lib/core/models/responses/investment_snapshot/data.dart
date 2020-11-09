import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class InvestmentSnapshotData {
  final String today;
  final String savings;
  final String investments;
  @JsonKey(name: "investment_balance")
  final double investmentBalance;

  InvestmentSnapshotData({
    this.today,
    this.savings,
    this.investments,
    this.investmentBalance,
  });

  factory InvestmentSnapshotData.fromJson(Map<String, dynamic> json) =>
      _$InvestmentSnapshotDataFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentSnapshotDataToJson(this);
}
