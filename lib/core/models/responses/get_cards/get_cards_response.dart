import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';

part 'get_cards_response.g.dart';

@JsonSerializable()
class GetCardsResponse {
  final bool status;
  final String message;
  final List<Card> data;
  @JsonKey(name: "response_code")
  final String responseCode;

  GetCardsResponse({
    this.status,
    this.message,
    this.data,
    this.responseCode,
  });

  factory GetCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCardsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCardsResponseToJson(this);
}
