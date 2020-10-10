import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_otp_response.g.dart';

@JsonSerializable()
class SendOTPResponse {
  final String status;
  final String message;
  final String otp;

  SendOTPResponse({
    @required this.status,
    @required this.otp,
    @required this.message,
  });

  factory SendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$SendOTPResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendOTPResponseToJson(this);
}
