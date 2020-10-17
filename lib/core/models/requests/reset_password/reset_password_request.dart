import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request.g.dart';

@JsonSerializable(nullable: false)
class ResetPasswordRequest {
  @JsonKey(name: "EMAIL")
  final String email;

  ResetPasswordRequest({@required this.email});

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}