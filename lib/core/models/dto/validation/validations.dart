import 'package:freezed_annotation/freezed_annotation.dart';

part 'validations.freezed.dart';

part 'validations.g.dart';

@freezed
abstract class Validations with _$Validations {
  @JsonSerializable(explicitToJson: true)
  factory Validations({
    @nullable bool bvn,
    @nullable bool phone,
    @nullable bool email,
  }) = _Validations;

  factory Validations.fromJson(Map<String, dynamic> json) =>
      _$ValidationsFromJson(json);
}
