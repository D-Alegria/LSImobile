import 'package:json_annotation/json_annotation.dart';

part 'recent_transaction.g.dart';

@JsonSerializable()
class RecentTransaction {
  @JsonKey(name: "TRANS_TYPE")
  final String transType;
  @JsonKey(name: "TRANSACTION_CODE")
  final String transactionCode;
  @JsonKey(name: "TRANS_DATE")
  final String transDate;
  @JsonKey(name: "TRANS_AMOUNT")
  final String transAmount;
  @JsonKey(name: "NARRATION_CUSTOMER")
  final String narrationCustomer;

  RecentTransaction({
    this.transType,
    this.transactionCode,
    this.transDate,
    this.transAmount,
    this.narrationCustomer,
  });

  factory RecentTransaction.fromJson(Map<String, dynamic> json) =>
      _$RecentTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$RecentTransactionToJson(this);
}
