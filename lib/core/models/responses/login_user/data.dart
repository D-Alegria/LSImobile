import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false)
class Data {
  final String email;
  final String fullName;
  final String profilePicture;

  Data({
    this.email,
    this.fullName,
    this.profilePicture,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
