import 'package:json_annotation/json_annotation.dart';

part 'bank.g.dart';

@JsonSerializable()
class Bank {
  @JsonKey(name: "bank_id")
  final String bankId;
  @JsonKey(name: "bank_name")
  final String bankName;
  @JsonKey(name: "bank_code")
  final String bankCode;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "is_bank")
  final String isBank;
  @JsonKey(name: "bank_short")
  final String bankShort;
  final String ordering;
  @JsonKey(name: "bank_img")
  final String bankImg;
  @JsonKey(name: "direct_debit_code")
  final String directDebitCode;
  @JsonKey(name: "paystack_bank_name")
  final String paystackBankName;

  Bank({
    this.bankId,
    this.bankName,
    this.bankCode,
    this.createdAt,
    this.isBank,
    this.bankShort,
    this.ordering,
    this.bankImg,
    this.directDebitCode,
    this.paystackBankName,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);

  Map<String, dynamic> toJson() => _$BankToJson(this);
}
