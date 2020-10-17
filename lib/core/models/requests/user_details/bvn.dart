import 'package:json_annotation/json_annotation.dart';

part 'bvn.g.dart';

@JsonSerializable(nullable: false)
class BVN {
  final String bvn;
  @JsonKey(name: "bvn_phone")
  final String bvnPhone;
  @JsonKey(name: "bvn_name")
  final String bvnName;
  @JsonKey(name: "bvn_dob")
  final String bvnDob;
  @JsonKey(name: "bvn_response")
  final String bvnResponse;

  BVN({
    this.bvn,
    this.bvnPhone,
    this.bvnName,
    this.bvnDob,
    this.bvnResponse,
  });

  factory BVN.fromJson(Map<String, dynamic> json) => _$BVNFromJson(json);

  Map<String, dynamic> toJson() => _$BVNToJson(this);
}
