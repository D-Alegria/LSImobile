import 'package:json_annotation/json_annotation.dart';

part 'id_card.g.dart';

@JsonSerializable(nullable: false)
class IdCard {
  @JsonKey(name: "identity_type")
  final String identityType;
  @JsonKey(name: "name_on_id")
  final String nameOnId;
  @JsonKey(name: "identityCode")
  final String identityCode;
  @JsonKey(name: "idmonth")
  final String idMonth;
  @JsonKey(name: "idyear")
  final String idYear;
  final String picture;

  IdCard({
    this.identityType,
    this.nameOnId,
    this.identityCode,
    this.idMonth,
    this.idYear,
    this.picture,
  });

  factory IdCard.fromJson(Map<String, dynamic> json) => _$IdCardFromJson(json);

  Map<String, dynamic> toJson() => _$IdCardToJson(this);
}
