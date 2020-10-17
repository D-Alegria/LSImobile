// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facebook _$FacebookFromJson(Map<String, dynamic> json) {
  return Facebook(
    name: json['name'] as String,
    email: json['email'] as String,
    picture: json['picture'] as String,
  );
}

Map<String, dynamic> _$FacebookToJson(Facebook instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'picture': instance.picture,
    };
