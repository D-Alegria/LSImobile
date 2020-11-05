import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'education.freezed.dart';

part 'education.g.dart';

@freezed
abstract class Education with _$Education {
  @JsonSerializable(nullable: true, explicitToJson: true)
  factory Education({
    @nullable
    @JsonKey(name: "educational_qualification")
        String educationalQualification,
    @nullable
    @JsonKey(name: "educational_institution")
        String educationalInstitution,
    String institution,
    String qualification,
    String others,
    @nullable @JsonKey(name: "qualification_year") String qualificationYear,
    @nullable
    @JsonKey(name: "specify_qualifications")
        String specifyQualifications,
    @nullable
    @JsonKey(name: "has_other_qualifications")
        String hasOtherQualifications,
  }) = _Education;

  factory Education.initial() => Education(
        educationalQualification: '',
        educationalInstitution: '',
        qualificationYear: '',
        specifyQualifications: '',
        hasOtherQualifications: '',
      );

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}
