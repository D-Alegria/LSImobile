import 'package:json_annotation/json_annotation.dart';

part 'reset_password_response.g.dart';

@JsonSerializable()
class ResetPasswordResponse {
  final bool status;
  final String message;
  final String token;
  @JsonKey(name: "response_code")
  final String responseCode;

  ResetPasswordResponse({
    this.status,
    this.message,
    this.token,
    this.responseCode,
  });

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);
}
