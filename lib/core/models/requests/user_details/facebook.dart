import 'package:json_annotation/json_annotation.dart';

part 'facebook.g.dart';

@JsonSerializable(nullable: false)
class Facebook {
  final String name;
  final String email;
  final String picture;

  Facebook({
    this.name,
    this.email,
    this.picture,
  });

  factory Facebook.fromJson(Map<String, dynamic> json) =>
      _$FacebookFromJson(json);

  Map<String, dynamic> toJson() => _$FacebookToJson(this);
}
