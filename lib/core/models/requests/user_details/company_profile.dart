import 'package:json_annotation/json_annotation.dart';

part 'company_profile.g.dart';

@JsonSerializable(nullable: false)
class CompanyProfile {
  @JsonKey(name: "company_name")
  final String companyName;
  @JsonKey(name: "company_email")
  final String companyEmail;
  @JsonKey(name: "company_website")
  final String companyWebsite;
  final String tin;
  @JsonKey(name: "rc_number")
  final String rcNumber;
  @JsonKey(name: "business_sector")
  final String businessSector;
  @JsonKey(name: "no_of_employees")
  final String noOfEmployees;
  @JsonKey(name: "business_start_month")
  final String businessStartMonth;
  @JsonKey(name: "business_start_year")
  final String businessStartYear;
  @JsonKey(name: "contact_person")
  final String contactPerson;
  @JsonKey(name: "contact_person_phone_number")
  final String contactPersonPhoneNumber;

  CompanyProfile({
    this.companyName,
    this.companyEmail,
    this.companyWebsite,
    this.tin,
    this.rcNumber,
    this.businessSector,
    this.noOfEmployees,
    this.businessStartMonth,
    this.businessStartYear,
    this.contactPerson,
    this.contactPersonPhoneNumber,
  });

  factory CompanyProfile.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyProfileToJson(this);
}
