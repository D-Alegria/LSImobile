// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Education _$_$_EducationFromJson(Map<String, dynamic> json) {
  return _$_Education(
    educationalQualification: json['educational_qualification'] as String,
    educationalInstitution: json['educational_institution'] as String,
    institution: json['institution'] as String,
    qualification: json['qualification'] as String,
    others: json['others'] as String,
    qualificationYear: json['qualification_year'] as String,
    specifyQualifications: json['specify_qualifications'] as String,
    hasOtherQualifications: json['has_other_qualifications'] as String,
  );
}

Map<String, dynamic> _$_$_EducationToJson(_$_Education instance) =>
    <String, dynamic>{
      'educational_qualification': instance.educationalQualification,
      'educational_institution': instance.educationalInstitution,
      'institution': instance.institution,
      'qualification': instance.qualification,
      'others': instance.others,
      'qualification_year': instance.qualificationYear,
      'specify_qualifications': instance.specifyQualifications,
      'has_other_qualifications': instance.hasOtherQualifications,
    };
