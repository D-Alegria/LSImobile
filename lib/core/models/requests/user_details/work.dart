import 'package:json_annotation/json_annotation.dart';

part 'work.g.dart';

@JsonSerializable(nullable: false)
class Work {
  @JsonKey(name: "edu_sector")
  final String eduSector;
  @JsonKey(name: "occupation_id")
  final String occupationId;
  @JsonKey(name: "work_sector")
  final String workSector;
  @JsonKey(name: "net_monthly_income")
  final String netMonthlyIncome;
  @JsonKey(name: "gross_annual")
  final String grossAnnual;
  final String employer;
  @JsonKey(name: "company_name")
  final String companyName;
  @JsonKey(name: "institution_id")
  final String institutionId;
  @JsonKey(name: "work_country_id")
  final String workCountryId;
  @JsonKey(name: "work_state_id")
  final String workStateId;
  @JsonKey(name: "work_address")
  final String workAddress;
  @JsonKey(name: "work_start_date")
  final String workStartDate;
  @JsonKey(name: "work_end_date")
  final String workEndDate;
  @JsonKey(name: "work_designation")
  final String workDesignation;
  @JsonKey(name: "designation_id")
  final String designationId;
  @JsonKey(name: "work_retired_date")
  final String workRetiredDate;
  @JsonKey(name: "years_of_service")
  final String yearsOfService;
  @JsonKey(name: "official_pay_day")
  final String officialPayDay;
  @JsonKey(name: "work_email")
  final String workEmail;
  @JsonKey(name: "official_email")
  final String officialEmail;
  @JsonKey(name: "staff_number")
  final String staffNumber;
  @JsonKey(name: "pension_number")
  final String pensionNumber;
  @JsonKey(name: "tax_number")
  final String taxNumber;
  @JsonKey(name: "work_email_verified")
  final String workEmailVerified;
  @JsonKey(name: "work_country_name")
  final String workCountryName;
  @JsonKey(name: "work_state_name")
  final String workStateName;
  @JsonKey(name: "occupation_text")
  final String occupationText;
  @JsonKey(name: "work_sector_text")
  final String workSectorText;
  @JsonKey(name: "edu_sector_text")
  final String eduSectorText;
  @JsonKey(name: "designation_text")
  final String designationText;
  @JsonKey(name: "company_phone")
  final String companyPhone;
  @JsonKey(name: "education_qualification")
  final String educationQualification;

  Work({
    this.eduSector,
    this.occupationId,
    this.workSector,
    this.netMonthlyIncome,
    this.grossAnnual,
    this.employer,
    this.companyName,
    this.institutionId,
    this.workCountryId,
    this.workStateId,
    this.workAddress,
    this.workStartDate,
    this.workEndDate,
    this.workDesignation,
    this.designationId,
    this.workRetiredDate,
    this.yearsOfService,
    this.officialPayDay,
    this.workEmail,
    this.officialEmail,
    this.staffNumber,
    this.pensionNumber,
    this.taxNumber,
    this.workEmailVerified,
    this.workCountryName,
    this.workStateName,
    this.occupationText,
    this.workSectorText,
    this.eduSectorText,
    this.designationText,
    this.companyPhone,
    this.educationQualification,
  });

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  Map<String, dynamic> toJson() => _$WorkToJson(this);
}
