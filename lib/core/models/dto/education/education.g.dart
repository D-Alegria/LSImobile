// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Education _$_$_EducationFromJson(Map<String, dynamic> json) {
  return _$_Education(
    json['educational_qualification'] as String,
    json['educational_institution'] as String,
    json['qualification_year'] as String,
    json['specify_qualifications'] as String,
    json['has_other_qualifications'] as String,
  );
}

Map<String, dynamic> _$_$_EducationToJson(_$_Education instance) =>
    <String, dynamic>{
      'educational_qualification': instance.educationalQualification,
      'educational_institution': instance.educationalInstitution,
      'qualification_year': instance.qualificationYear,
      'specify_qualifications': instance.specifyQualifications,
      'has_other_qualifications': instance.hasOtherQualifications,
    };
