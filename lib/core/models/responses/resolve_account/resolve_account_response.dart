import 'package:json_annotation/json_annotation.dart';

part 'resolve_account_response.g.dart';

@JsonSerializable()
class ResolveAccountResponse {
  final String status;
  final String message;
  final BankData data;

  ResolveAccountResponse({
    this.status,
    this.message,
    this.data,
  });

  factory ResolveAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$ResolveAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResolveAccountResponseToJson(this);
}

@JsonSerializable()
class BankData {
  @JsonKey(name: "account_number")
  final String accountNumber;
  @JsonKey(name: "account_name")
  final String accountName;
  @JsonKey(name: "bank_id")
  final String bankId;

  BankData({this.accountNumber, this.accountName, this.bankId});

  factory BankData.fromJson(Map<String, dynamic> json) =>
      _$BankDataFromJson(json);

  Map<String, dynamic> toJson() => _$BankDataToJson(this);
}
