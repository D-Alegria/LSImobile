import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable(nullable: false)
class Profile {
  final String email;
  final String password;
  @JsonKey(name: "full_name")
  final String fullName;
  @JsonKey(name: "is_individual")
  final String isIndividual;
  final String phone;

  Profile({
    @required this.email,
    @required this.password,
    @required this.fullName,
    @required this.isIndividual,
    @required this.phone,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
