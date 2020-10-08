// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    email: json['email'] as String,
    fullName: json['fullName'] as String,
    profilePicture: json['profilePicture'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'profilePicture': instance.profilePicture,
    };
