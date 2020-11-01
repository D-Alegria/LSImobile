import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'next_of_kin.freezed.dart';

part 'next_of_kin.g.dart';

@freezed
abstract class NextOfKin with _$NextOfKin {
  @JsonSerializable(explicitToJson: true)
  factory NextOfKin({
    @nullable @JsonKey(name: "nok_name") String nokName,
    @nullable @JsonKey(name: "nok_email") String nokEmail,
    @nullable @JsonKey(name: "nok_phone") String nokPhone,
    @nullable @JsonKey(name: "nok_address") String nokAddress,
    @nullable @JsonKey(name: "nok_relationship") String nokRelationship,
    @nullable @JsonKey(name: "number_of_dependants") String numberOfDependants,
    @nullable @JsonKey(name: "number_of_children") String numberOfChildren,
  }) = _NextOfKin;

  factory NextOfKin.fromJson(Map<String, dynamic> json) =>
      _$NextOfKinFromJson(json);
}
