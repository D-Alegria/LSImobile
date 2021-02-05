import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';

part 'user_details_response.g.dart';

@JsonSerializable()
class UserDetailsResponse {
  final bool status;
  final String message;
  final UserDetailsData data;
  @JsonKey(name: "response_code")
  final String responseCode;

  UserDetailsResponse({
    this.status,
    this.message,
    this.data,
    this.responseCode,
  });

  factory UserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsResponseToJson(this);
}
