// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_of_kin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextOfKin _$NextOfKinFromJson(Map<String, dynamic> json) {
  return NextOfKin(
    nokName: json['nok_name'] as String,
    nokEmail: json['nok_email'] as String,
    nokPhone: json['nok_phone'] as String,
    nokAddress: json['nok_address'] as String,
    nokRelationship: json['nok_relationship'] as String,
    numberOfDependants: json['number_of_dependants'] as String,
    numberOfChildren: json['number_of_children'] as String,
  );
}

Map<String, dynamic> _$NextOfKinToJson(NextOfKin instance) => <String, dynamic>{
      'nok_name': instance.nokName,
      'nok_email': instance.nokEmail,
      'nok_phone': instance.nokPhone,
      'nok_address': instance.nokAddress,
      'nok_relationship': instance.nokRelationship,
      'number_of_dependants': instance.numberOfDependants,
      'number_of_children': instance.numberOfChildren,
    };
