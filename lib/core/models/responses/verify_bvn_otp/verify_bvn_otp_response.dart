import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/bvn_response/bvn_response.dart';

part 'verify_bvn_otp_response.g.dart';

@JsonSerializable()
class VerifyBVNOtpResponse {
  final bool status;
  final String message;
  final BvnResponse response;

  VerifyBVNOtpResponse({this.status, this.message, this.response});

  factory VerifyBVNOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyBVNOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyBVNOtpResponseToJson(this);
}

