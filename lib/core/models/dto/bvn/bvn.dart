import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bvn.freezed.dart';

part 'bvn.g.dart';

@freezed
abstract class BVN with _$BVN {
  @JsonSerializable(explicitToJson: true)
  factory BVN({
    String bvn,
    @JsonKey(name: "bvn_phone") String bvnPhone,
    @JsonKey(name: "bvn_name") String bvnName,
    @JsonKey(name: "bvn_dob") String bvnDob,
    @JsonKey(name: "bvn_response") String bvnResponse,
  }) = _BVN;

  factory BVN.fromJson(Map<String, dynamic> json) => _$BVNFromJson(json);
}
