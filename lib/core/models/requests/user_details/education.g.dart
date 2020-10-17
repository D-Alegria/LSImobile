// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Education _$EducationFromJson(Map<String, dynamic> json) {
  return Education(
    educationalQualification: json['educational_qualification'] as String,
    educationalInstitution: json['educational_institution'] as String,
    qualificationYear: json['qualification_year'] as String,
    specifyQualifications: json['specify_qualifications'] as String,
    hasOtherQualifications: json['has_other_qualifications'] as String,
  );
}

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'educational_qualification': instance.educationalQualification,
      'educational_institution': instance.educationalInstitution,
      'qualification_year': instance.qualificationYear,
      'specify_qualifications': instance.specifyQualifications,
      'has_other_qualifications': instance.hasOtherQualifications,
    };
