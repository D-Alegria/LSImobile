// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    email: json['email'] as String,
    fullName: json['full_name'] as String,
    profilePicture: json['profile_picture'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'email': instance.email,
      'full_name': instance.fullName,
      'profile_picture': instance.profilePicture,
    };
