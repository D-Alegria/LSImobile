import 'package:json_annotation/json_annotation.dart';

part 'bvn_data.g.dart';

@JsonSerializable()
class BvnData {
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  final String dob;
  @JsonKey(name: "formatted_dob")
  final String formattedDob;
  final String mobile;
  final String bvn;

  BvnData({
    this.firstName,
    this.lastName,
    this.dob,
    this.formattedDob,
    this.mobile,
    this.bvn,
  });

  factory BvnData.fromJson(Map<String, dynamic> json) =>
      _$BvnDataFromJson(json);

  Map<String, dynamic> toJson() => _$BvnDataToJson(this);
}