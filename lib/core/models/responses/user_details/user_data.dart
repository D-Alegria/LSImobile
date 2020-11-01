import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  final bool status;
  final String message;
  final UserDetailsRequest data;
  @JsonKey(name: "is_individual")
  final bool isIndividual;

  UserData({this.status, this.message, this.data, this.isIndividual});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
