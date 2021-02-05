import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'linkedin.freezed.dart';

part 'linkedin.g.dart';

@freezed
abstract class Linkedin with _$Linkedin {
  @JsonSerializable(explicitToJson: true)
  factory Linkedin({
    @nullable String fullname,
    @nullable String picture,
    @nullable String profile,
    @nullable String connection,
    @nullable String location,
    @nullable String industry,
    @nullable String headline,
    @nullable String summary,
    @nullable String email,
    @nullable List companies,
  }) = _Linkedin;

  factory Linkedin.fromJson(Map<String, dynamic> json) =>
      _$LinkedinFromJson(json);
}
