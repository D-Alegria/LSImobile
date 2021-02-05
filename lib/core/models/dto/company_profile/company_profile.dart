import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_profile.freezed.dart';

part 'company_profile.g.dart';

@freezed
abstract class CompanyProfile with _$CompanyProfile {
  @JsonSerializable(explicitToJson: true)
  factory CompanyProfile({
    @JsonKey(name: "company_name") String companyName,
    @JsonKey(name: "company_email") String companyEmail,
    @JsonKey(name: "company_website") String companyWebsite,
    String tin,
    @JsonKey(name: "rc_number") String rcNumber,
    @JsonKey(name: "business_sector") String businessSector,
    @JsonKey(name: "no_of_employees") String noOfEmployees,
    @JsonKey(name: "business_start_month") String businessStartMonth,
    @JsonKey(name: "business_start_year") String businessStartYear,
    @JsonKey(name: "contact_person") String contactPerson,
    @JsonKey(name: "contact_person_phone_number")
        String contactPersonPhoneNumber,
  }) = _CompanyProfile;

  factory CompanyProfile.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileFromJson(json);
}
