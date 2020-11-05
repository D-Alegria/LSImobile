// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bvn_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BvnData _$BvnDataFromJson(Map<String, dynamic> json) {
  return BvnData(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    dob: json['dob'] as String,
    formattedDob: json['formatted_dob'] as String,
    mobile: json['mobile'] as String,
    bvn: json['bvn'] as String,
  );
}

Map<String, dynamic> _$BvnDataToJson(BvnData instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'dob': instance.dob,
      'formatted_dob': instance.formattedDob,
      'mobile': instance.mobile,
      'bvn': instance.bvn,
    };
