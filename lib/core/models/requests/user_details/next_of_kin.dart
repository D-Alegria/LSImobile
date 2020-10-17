import 'package:json_annotation/json_annotation.dart';

part 'next_of_kin.g.dart';

@JsonSerializable(nullable: false)
class NextOfKin {
  @JsonKey(name: "nok_name")
  final String nokName;
  @JsonKey(name: "nok_email")
  final String nokEmail;
  @JsonKey(name: "nok_phone")
  final String nokPhone;
  @JsonKey(name: "nok_address")
  final String nokAddress;
  @JsonKey(name: "nok_relationship")
  final String nokRelationship;
  @JsonKey(name: "number_of_dependants")
  final String numberOfDependants;
  @JsonKey(name: "number_of_children")
  final String numberOfChildren;

  NextOfKin({
    this.nokName,
    this.nokEmail,
    this.nokPhone,
    this.nokAddress,
    this.nokRelationship,
    this.numberOfDependants,
    this.numberOfChildren,
  });

  factory NextOfKin.fromJson(Map<String, dynamic> json) =>
      _$NextOfKinFromJson(json);

  Map<String, dynamic> toJson() => _$NextOfKinToJson(this);
}
