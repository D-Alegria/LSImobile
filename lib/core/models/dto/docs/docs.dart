import 'package:json_annotation/json_annotation.dart';

part 'docs.g.dart';

@JsonSerializable()
class Doc {
  final String display;
  final String value;
  final String filename;
  final String name;
  final bool uploaded;

  Doc({this.display, this.value, this.filename, this.name, this.uploaded});

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

  Map<String, dynamic> toJson() => _$DocToJson(this);
}
