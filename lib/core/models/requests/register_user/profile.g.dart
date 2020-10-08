// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    email: json['email'] as String,
    password: json['password'] as String,
    fullName: json['full_name'] as String,
    isIndividual: json['is_individual'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'is_individual': instance.isIndividual,
      'phone': instance.phone,
    };
