import 'package:json_annotation/json_annotation.dart';

part 'verify_bvn_otp_request.g.dart';

@JsonSerializable()
class VerifyBVNOtpRequest {
  final String txn;
  final String token;
  final String otp;

  VerifyBVNOtpRequest({this.txn, this.otp, this.token});

  factory VerifyBVNOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyBVNOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyBVNOtpRequestToJson(this);
}
