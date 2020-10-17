import 'package:json_annotation/json_annotation.dart';

part 'remita.g.dart';

@JsonSerializable(nullable: false)
class Remita {
  @JsonKey(name: "has_remita")
  final bool hasRemita;

  Remita({this.hasRemita});

  factory Remita.fromJson(Map<String, dynamic> json) => _$RemitaFromJson(json);

  Map<String, dynamic> toJson() => _$RemitaToJson(this);
}
