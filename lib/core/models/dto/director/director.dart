import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'director.freezed.dart';

part 'director.g.dart';

@freezed
abstract class Director with _$Director {
  @JsonSerializable(explicitToJson: true)
  factory Director({
    String name,
    String email,
    String bvn,
  }) = _Director;

  factory Director.fromJson(Map<String, dynamic> json) =>
      _$DirectorFromJson(json);
}
