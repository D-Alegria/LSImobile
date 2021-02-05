import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'facebook.g.dart';
part 'facebook.freezed.dart';

@freezed
abstract class Facebook with _$Facebook {
  @JsonSerializable(explicitToJson: true)
  factory Facebook({
    @nullable String name,
    @nullable String email,
    @nullable String picture,
  }) = _Facebook;

  factory Facebook.fromJson(Map<String, dynamic> json) =>
      _$FacebookFromJson(json);
}
