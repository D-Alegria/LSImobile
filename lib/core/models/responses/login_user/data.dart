import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String email;
  @JsonKey(name: "full_name")
  final String fullName;
  @JsonKey(name: "profile_picture")
  final String profilePicture;

  Data({
    this.email,
    this.fullName,
    this.profilePicture,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
