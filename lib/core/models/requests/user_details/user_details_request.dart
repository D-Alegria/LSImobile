import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/business_address/business_address.dart';
import 'package:lsi_mobile/core/models/dto/business_income/business_income.dart';
import 'package:lsi_mobile/core/models/dto/bvn/bvn.dart';
import 'package:lsi_mobile/core/models/dto/company_profile/company_profile.dart';
import 'package:lsi_mobile/core/models/dto/education/education.dart';
import 'package:lsi_mobile/core/models/dto/expenses/expenses.dart';
import 'package:lsi_mobile/core/models/dto/facebook/facebook.dart';
import 'package:lsi_mobile/core/models/dto/home_address/home_address.dart';
import 'package:lsi_mobile/core/models/dto/id_card/id_card.dart';
import 'package:lsi_mobile/core/models/dto/linkedin/linkedin.dart';
import 'package:lsi_mobile/core/models/dto/next_of_kin/next_of_kin.dart';
import 'package:lsi_mobile/core/models/dto/operating_expenses/operating_expenses.dart';
import 'package:lsi_mobile/core/models/dto/remita/remita.dart';
import 'package:lsi_mobile/core/models/dto/twitter/twitter.dart';
import 'package:lsi_mobile/core/models/dto/user_details_profile/profile.dart';
import 'package:lsi_mobile/core/models/dto/work/work.dart';

part 'user_details_request.freezed.dart';

part 'user_details_request.g.dart';

@freezed
abstract class UserDetailsRequest with _$UserDetailsRequest {
  @JsonSerializable(explicitToJson: true)
  factory UserDetailsRequest({
    @nullable String token,
    @nullable Profile profile,
    @nullable @JsonKey(name: "next_of_kin") NextOfKin nextOfKin,
    @nullable Education education,
    @nullable @JsonKey(name: "home_address") HomeAddress homeAddress,
    @nullable Work work,
    @nullable Expenses expenses,
    @nullable Facebook facebook,
    @nullable Twitter twitter,
    @nullable Linkedin linkedin,
    @nullable BVN bvn,
    @nullable Remita remita,
    @nullable @JsonKey(name: "company_profile") CompanyProfile companyProfile,
    @nullable List directors,
    @nullable @JsonKey(name: "business_income") BusinessIncome businessIncome,
    @nullable @JsonKey(name: "operating_expenses") OperatingExpenses operatingExpenses,
    @nullable @JsonKey(name: "business_address") BusinessAddress businessAddress,
    @nullable @JsonKey(name: "idcard") IdCard idCard,
  }) = _UserDetailsRequest;

  factory UserDetailsRequest.initial() => UserDetailsRequest(
    profile: Profile.initial(),
    education: Education.initial(),
    work: Work.initial(),
  );



  factory UserDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsRequestFromJson(json);
}
