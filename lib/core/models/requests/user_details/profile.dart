import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable(nullable: false)
class Profile {
  @JsonKey(name: "legal_name")
  final String legalName;
  final String email;
  final String phone;
  @JsonKey(name: "date_of_birth")
  final String dateOfBirth;
  @JsonKey(name: "birth_year")
  final String birthYear;
  @JsonKey(name: "birth_month")
  final String birthMonth;
  @JsonKey(name: "birth_day")
  final String birthDay;
  final String gender;
  @JsonKey(name: "marital_status")
  final String maritalStatus;
  final String age;
  final String nationality;
  @JsonKey(name: "state_of_origin")
  final String stateOfOrigin;
  final String bvn;
  @JsonKey(name: "file_name")
  final String fileName;

  Profile({
    this.legalName,
    this.email,
    this.phone,
    this.dateOfBirth,
    this.birthYear,
    this.birthMonth,
    this.birthDay,
    this.gender,
    this.maritalStatus,
    this.age,
    this.nationality,
    this.stateOfOrigin,
    this.bvn,
    this.fileName,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
