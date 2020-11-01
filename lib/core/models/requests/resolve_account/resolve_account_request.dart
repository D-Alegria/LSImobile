import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'resolve_account_request.g.dart';

@JsonSerializable()
class ResolveAccountRequest extends TokenRequest {
  @JsonKey(name: "account_number")
  final String accountNumber;
  @JsonKey(name: "bank_code")
  final String bankCode;

  ResolveAccountRequest({this.accountNumber, this.bankCode});

  factory ResolveAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$ResolveAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResolveAccountRequestToJson(this);
}
