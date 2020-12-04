// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_picture_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfilePictureRequest _$UpdateProfilePictureRequestFromJson(
    Map<String, dynamic> json) {
  return UpdateProfilePictureRequest(
    filename: json['filename'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$UpdateProfilePictureRequestToJson(
        UpdateProfilePictureRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'filename': instance.filename,
    };
