import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remita.g.dart';

part 'remita.freezed.dart';

@freezed
abstract class Remita with _$Remita {
  @JsonSerializable(explicitToJson: true)
  factory Remita({@JsonKey(name: "has_remita") bool hasRemita}) = _Remita;

  factory Remita.fromJson(Map<String, dynamic> json) => _$RemitaFromJson(json);
}
