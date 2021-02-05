import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/bank/bank.dart';

part 'bank_account_response.g.dart';

@JsonSerializable()
class BankAccountResponse {
  final bool status;
  final String message;
  final List<Account> data;
  @JsonKey(name: "banks_list")
  final List<Bank> banksList;
  @JsonKey(name: "response_code")
  final String responseCode;

  BankAccountResponse({
    this.status,
    this.message,
    this.data,
    this.banksList,
    this.responseCode,
  });

  factory BankAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$BankAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BankAccountResponseToJson(this);
}
