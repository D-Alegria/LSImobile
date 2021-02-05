import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/bvn_data/bvn_data.dart';
import 'package:lsi_mobile/core/models/dto/meta/meta.dart';
import 'package:lsi_mobile/core/models/dto/validation/validation.dart';

part 'bvn_response.g.dart';

@JsonSerializable()
class BvnResponse {
  final bool status;
  final String message;
  final BvnData data;
  final Meta meta;
  final Validation validation;
  @JsonKey(name: "validation_type")
  final String validationType;
  @JsonKey(name: "TXN_REF")
  final String txnRef;
  final int percent;
  final int otp;

  BvnResponse({
    this.status,
    this.message,
    this.data,
    this.meta,
    this.validation,
    this.validationType,
    this.txnRef,
    this.percent,
    this.otp,
  });

  factory BvnResponse.fromJson(Map<String, dynamic> json) =>
      _$BvnResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BvnResponseToJson(this);
}
