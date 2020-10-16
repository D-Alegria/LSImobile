import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOTPResponse {
  final bool status;
  final String message;

  VerifyOTPResponse({
    @required this.status,
    @required this.message,
  });

  factory VerifyOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPResponseToJson(this);
}
