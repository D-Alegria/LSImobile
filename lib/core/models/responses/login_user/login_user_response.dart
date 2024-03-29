import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'lending_settings.dart';
import 'validations.dart';

part 'login_user_response.g.dart';

@JsonSerializable()
class LoginUserResponse {
  final bool status;
  final String message;
  final String token;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "lending_settings")
  final LendingSettings lendingSettings;
  final Validations validations;
  final Data data;
  @JsonKey(name: "is_suspended")
  final bool isSuspended;
  @JsonKey(name: "suspended_till")
  final String suspendedTill;
  @JsonKey(name: "response_code")
  final String responseCode;

  LoginUserResponse({
    this.status,
    this.message,
    this.token,
    this.userId,
    this.lendingSettings,
    this.validations,
    this.data,
    this.isSuspended,
    this.suspendedTill,
    this.responseCode,
  });

  factory LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserResponseToJson(this);
}
