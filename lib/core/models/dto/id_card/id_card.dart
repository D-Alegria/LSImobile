import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'id_card.freezed.dart';

part 'id_card.g.dart';

@freezed
abstract class IdCard with _$IdCard {
  @JsonSerializable(explicitToJson: true)
  factory IdCard({
    @JsonKey(name: "identity_type") String identityType,
    @JsonKey(name: "name_on_id") String nameOnId,
    @JsonKey(name: "identityCode") String identityCode,
    @JsonKey(name: "idmonth") String idMonth,
    @JsonKey(name: "idyear") String idYear,
    String picture,
  }) = _IdCard;

  factory IdCard.fromJson(Map<String, dynamic> json) => _$IdCardFromJson(json);
}
