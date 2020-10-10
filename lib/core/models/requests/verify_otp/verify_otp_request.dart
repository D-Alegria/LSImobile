import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request.g.dart';

@JsonSerializable(nullable: false)
class VerifyOTPRequest {
  final String phone;
  final int otp;

  VerifyOTPRequest({@required this.phone, @required this.otp});

  factory VerifyOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPRequestToJson(this);
}
