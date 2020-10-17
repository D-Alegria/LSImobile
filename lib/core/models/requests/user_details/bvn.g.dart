// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bvn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BVN _$BVNFromJson(Map<String, dynamic> json) {
  return BVN(
    bvn: json['bvn'] as String,
    bvnPhone: json['bvn_phone'] as String,
    bvnName: json['bvn_name'] as String,
    bvnDob: json['bvn_dob'] as String,
    bvnResponse: json['bvn_response'] as String,
  );
}

Map<String, dynamic> _$BVNToJson(BVN instance) => <String, dynamic>{
      'bvn': instance.bvn,
      'bvn_phone': instance.bvnPhone,
      'bvn_name': instance.bvnName,
      'bvn_dob': instance.bvnDob,
      'bvn_response': instance.bvnResponse,
    };
