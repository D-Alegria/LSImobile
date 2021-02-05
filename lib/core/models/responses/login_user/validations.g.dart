// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validations _$ValidationsFromJson(Map<String, dynamic> json) {
  return Validations(
    bvn: json['bvn'] as bool,
    phone: json['phone'] as bool,
    email: json['email'] as bool,
  );
}

Map<String, dynamic> _$ValidationsToJson(Validations instance) =>
    <String, dynamic>{
      'bvn': instance.bvn,
      'phone': instance.phone,
      'email': instance.email,
    };
