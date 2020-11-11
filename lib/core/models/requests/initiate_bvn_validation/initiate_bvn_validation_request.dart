import 'package:json_annotation/json_annotation.dart';

part 'initiate_bvn_validation_request.g.dart';

@JsonSerializable()
class InitiateBVNValidationRequest {
  final String bvn;
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;

  InitiateBVNValidationRequest({
    this.bvn,
    this.firstName,
    this.lastName,
  });

  factory InitiateBVNValidationRequest.fromJson(Map<String, dynamic> json) =>
      _$InitiateBVNValidationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InitiateBVNValidationRequestToJson(this);
}
