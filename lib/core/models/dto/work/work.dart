import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work.g.dart';
part 'work.freezed.dart';

@freezed
abstract class Work with _$Work {
  @JsonSerializable(explicitToJson: true)
  factory Work({
    @nullable @JsonKey(name: "edu_sector") String eduSector,
    @nullable @JsonKey(name: "occupation_id") String occupationId,
    @nullable @JsonKey(name: "work_sector") String workSector,
    @nullable @JsonKey(name: "net_monthly_income") String netMonthlyIncome,
    @nullable @JsonKey(name: "gross_annual") String grossAnnual,
    @nullable String employer,
    @nullable @JsonKey(name: "company_name") String companyName,
    @nullable @JsonKey(name: "institution_id") String institutionId,
    @nullable @JsonKey(name: "work_country_id") String workCountryId,
    @nullable @JsonKey(name: "work_state_id") String workStateId,
    @nullable @JsonKey(name: "work_address") String workAddress,
    @nullable @JsonKey(name: "work_start_date") String workStartDate,
    @nullable @JsonKey(name: "work_end_date") String workEndDate,
    @nullable @JsonKey(name: "work_designation") String workDesignation,
    @nullable @JsonKey(name: "designation_id") String designationId,
    @nullable @JsonKey(name: "work_retired_date") String workRetiredDate,
    @nullable @JsonKey(name: "years_of_service") String yearsOfService,
    @nullable @JsonKey(name: "official_pay_day") String officialPayDay,
    @nullable @JsonKey(name: "work_email") String workEmail,
    @nullable @JsonKey(name: "official_email") String officialEmail,
    @nullable @JsonKey(name: "staff_number") String staffNumber,
    @nullable @JsonKey(name: "pension_number") String pensionNumber,
    @nullable @JsonKey(name: "tax_number") String taxNumber,
    @nullable @JsonKey(name: "work_email_verified") String workEmailVerified,
    @nullable @JsonKey(name: "work_country_name") String workCountryName,
    @nullable @JsonKey(name: "work_state_name") String workStateName,
    @nullable @JsonKey(name: "occupation_text") String occupationText,
    @nullable @JsonKey(name: "work_sector_text") String workSectorText,
    @nullable @JsonKey(name: "edu_sector_text") String eduSectorText,
    @nullable @JsonKey(name: "designation_text") String designationText,
    @nullable @JsonKey(name: "company_phone") String companyPhone,
    @nullable @JsonKey(name: "education_qualification") String educationQualification,
  }) = _Work;

  factory Work.initial()=> Work(
   eduSector: "",
   occupationId: "",
   workSector: "",
   netMonthlyIncome: "",
   grossAnnual: "",
   employer: "",
   companyName: "",
   institutionId: "",
   workCountryId: "",
   workStateId: "",
   workAddress: "",
   workStartDate: "",
   workEndDate: "",
   workDesignation: "",
   designationId: "",
   workRetiredDate: "",
   yearsOfService: "",
   officialPayDay: "",
   workEmail: "",
   officialEmail: "",
   staffNumber: "",
   pensionNumber: "",
   taxNumber: "",
   workEmailVerified: "",
   workCountryName: "",
   workStateName: "",
   occupationText: "",
   workSectorText: "",
   eduSectorText: "",
   designationText: "",
   companyPhone: "",
   educationQualification: "",
  );
  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}
