import 'package:json_annotation/json_annotation.dart';

part 'validations.g.dart';

@JsonSerializable()
class Validations {
  final bool bvn;
  final bool phone;
  final bool email;

  Validations({this.bvn, this.phone, this.email});

  factory Validations.fromJson(Map<String, dynamic> json) =>
      _$ValidationsFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationsToJson(this);
}
