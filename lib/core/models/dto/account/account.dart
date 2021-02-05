import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  @JsonKey(name: "bank_id")
  final String bankId;
  @JsonKey(name: "account_number")
  final String accountNumber;
  @JsonKey(name: "account_name")
  final String accountName;
  @JsonKey(name: "account_id")
  final String accountId;
  @JsonKey(name: "bank_name")
  final String bankName;

  Account({
    this.accountNumber,
    this.accountName,
    this.accountId,
    this.bankId,
    this.bankName,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
