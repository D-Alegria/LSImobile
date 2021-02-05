import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/bvn_response/bvn_response.dart';

part 'initiate_bvn_validation_response.g.dart';

@JsonSerializable()
class InitiateBVNValidationResponse {
  final bool status;
  final BvnResponse data;
  final String response;

  InitiateBVNValidationResponse({this.response, this.status, this.data});

  factory InitiateBVNValidationResponse.fromJson(Map<String, dynamic> json) =>
      _$InitiateBVNValidationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InitiateBVNValidationResponseToJson(this);
}