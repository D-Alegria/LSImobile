import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable(nullable: false)
class Education {
  @JsonKey(name: "educational_qualification")
  final String educationalQualification;
  @JsonKey(name: "educational_institution")
  final String educationalInstitution;
  @JsonKey(name: "qualification_year")
  final String qualificationYear;
  @JsonKey(name: "specify_qualifications")
  final String specifyQualifications;
  @JsonKey(name: "has_other_qualifications")
  final String hasOtherQualifications;

  Education({
    this.educationalQualification,
    this.educationalInstitution,
    this.qualificationYear,
    this.specifyQualifications,
    this.hasOtherQualifications,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
