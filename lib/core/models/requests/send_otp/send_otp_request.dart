import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_otp_request.g.dart';

@JsonSerializable(nullable: false)
class SendOTPRequest {
  final String phone;

  SendOTPRequest({@required this.phone});

  factory SendOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$SendOTPRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendOTPRequestToJson(this);
}
