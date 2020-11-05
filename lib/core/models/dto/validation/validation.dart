import 'package:json_annotation/json_annotation.dart';

part 'validation.g.dart';

@JsonSerializable()
class Validation {
  final String phone;

  Validation({this.phone});

  factory Validation.fromJson(Map<String, dynamic> json) =>
      _$ValidationFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationToJson(this);
}
