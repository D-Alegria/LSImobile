import 'package:json_annotation/json_annotation.dart';

part 'initialize_card_transaction_response.g.dart';

@JsonSerializable()
class InitializeCardTransactionResponse {
  final bool status;
  final String message;
  final CardTransactionData data;
  @JsonKey(name: "has_own_gateway")
  final String hasOwnGateway;

  InitializeCardTransactionResponse({
    this.status,
    this.message,
    this.data,
    this.hasOwnGateway,
  });

  factory InitializeCardTransactionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$InitializeCardTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InitializeCardTransactionResponseToJson(this);
}

@JsonSerializable()
class CardTransactionData {
  @JsonKey(name: "authorization_url")
  final String authorizationUrl;
  @JsonKey(name: "access_code")
  final String accessCode;
  final String reference;

  CardTransactionData({
    this.reference,
    this.accessCode,
    this.authorizationUrl,
  });

  factory CardTransactionData.fromJson(Map<String, dynamic> json) =>
      _$CardTransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$CardTransactionDataToJson(this);
}
