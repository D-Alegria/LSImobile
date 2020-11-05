// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_of_kin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NextOfKin _$_$_NextOfKinFromJson(Map<String, dynamic> json) {
  return _$_NextOfKin(
    nokName: json['nok_name'] as String,
    fullName: json['full_name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    address: json['address'] as String,
    relationship: json['relationship'] as String,
    nokEmail: json['nok_email'] as String,
    nokPhone: json['nok_phone'] as String,
    nokAddress: json['nok_address'] as String,
    nokRelationship: json['nok_relationship'] as String,
    numberOfDependants: json['number_of_dependants'] as String,
    numberOfChildren: json['number_of_children'] as String,
  );
}

Map<String, dynamic> _$_$_NextOfKinToJson(_$_NextOfKin instance) =>
    <String, dynamic>{
      'nok_name': instance.nokName,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'relationship': instance.relationship,
      'nok_email': instance.nokEmail,
      'nok_phone': instance.nokPhone,
      'nok_address': instance.nokAddress,
      'nok_relationship': instance.nokRelationship,
      'number_of_dependants': instance.numberOfDependants,
      'number_of_children': instance.numberOfChildren,
    };
