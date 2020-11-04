import 'package:json_annotation/json_annotation.dart';

part 'docs.g.dart';

@JsonSerializable()
class Doc {
  final String display;
  final String value;

  Doc({this.display, this.value});

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

  Map<String, dynamic> toJson() => _$DocToJson(this);
}
