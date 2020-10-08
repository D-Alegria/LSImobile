import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile.dart';

part 'register_user_request.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class RegisterUserRequest {
  final Profile profile;

  RegisterUserRequest({@required this.profile});

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserRequestToJson(this);
}
