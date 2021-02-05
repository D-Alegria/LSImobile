// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    legalName: json['legal_name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    dateOfBirth: json['date_of_birth'] as String,
    birthYear: json['birth_year'] as String,
    birthMonth: json['birth_month'] as String,
    birthDay: json['birth_day'] as String,
    gender: json['gender'] as String,
    maritalStatus: json['marital_status'] as String,
    age: json['age'] as int,
    nationality: json['nationality'] as String,
    stateOfOrigin: json['state_of_origin'] as String,
    bvn: json['bvn'] as String,
    fileName: json['file_name'] as String,
    profileImage: json['profile_image'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'legal_name': instance.legalName,
      'email': instance.email,
      'phone': instance.phone,
      'date_of_birth': instance.dateOfBirth,
      'birth_year': instance.birthYear,
      'birth_month': instance.birthMonth,
      'birth_day': instance.birthDay,
      'gender': instance.gender,
      'marital_status': instance.maritalStatus,
      'age': instance.age,
      'nationality': instance.nationality,
      'state_of_origin': instance.stateOfOrigin,
      'bvn': instance.bvn,
      'file_name': instance.fileName,
      'profile_image': instance.profileImage,
      'token': instance.token,
    };
