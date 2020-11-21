import 'package:json_annotation/json_annotation.dart';

part 'initiate_card_transaction_request.g.dart';

@JsonSerializable()
class InitiateCardTransactionRequest {
  final String token;
  final String amount;

  InitiateCardTransactionRequest({this.token, this.amount});

  factory InitiateCardTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$InitiateCardTransactionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InitiateCardTransactionRequestToJson(this);
}
