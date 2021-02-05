import 'package:json_annotation/json_annotation.dart';

part 'register_user_response.g.dart';

@JsonSerializable()
class RegisterUserResponse {
  final bool status;
  final String message;
  final String token;
  @JsonKey(name: "response_code")
  final String responseCode;
  @JsonKey(name: "user_id")
  final String userId;

  RegisterUserResponse({
    this.status,
    this.message,
    this.token,
    this.responseCode,
    this.userId,
  });

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserResponseToJson(this);
}
