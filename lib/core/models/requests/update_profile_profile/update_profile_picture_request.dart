import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'update_profile_picture_request.g.dart';

@JsonSerializable()
class UpdateProfilePictureRequest extends TokenRequest {
  final String filename;

  UpdateProfilePictureRequest({@required this.filename, String token})
      : super(token: token);

  factory UpdateProfilePictureRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilePictureRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfilePictureRequestToJson(this);
}
