import 'package:json_annotation/json_annotation.dart';

part 'resolve_account_request.g.dart';

@JsonSerializable()
class ResolveAccountRequest {
  final String token;
  @JsonKey(name: "account_number")
  final String accountNumber;
  @JsonKey(name: "bank_code")
  final String bankCode;

  ResolveAccountRequest({this.accountNumber, this.bankCode, this.token});

  factory ResolveAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$ResolveAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResolveAccountRequestToJson(this);
}
