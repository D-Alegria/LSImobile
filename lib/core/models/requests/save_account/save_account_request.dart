import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'save_account_request.g.dart';

@JsonSerializable()
class SaveAccountRequest extends TokenRequest {
  @JsonKey(name: "account_number")
  final String accountNumber;
  @JsonKey(name: "bank_id")
  final String bankId;
  @JsonKey(name: "account_name")
  final String accountName;

  SaveAccountRequest({this.accountNumber, this.bankId, this.accountName, token})
      : super(token: token);

  factory SaveAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SaveAccountRequestToJson(this);
}
