import 'package:json_annotation/json_annotation.dart';

part 'twitter.g.dart';

@JsonSerializable(nullable: false)
class Twitter {
  Twitter();

  factory Twitter.fromJson(Map<String, dynamic> json) =>
      _$TwitterFromJson(json);

  Map<String, dynamic> toJson() => _$TwitterToJson(this);
}
