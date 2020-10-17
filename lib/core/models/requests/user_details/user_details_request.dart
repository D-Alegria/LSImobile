import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/bvn.dart';
import 'package:lsi_mobile/core/models/requests/user_details/company_profile.dart';
import 'package:lsi_mobile/core/models/requests/user_details/facebook.dart';
import 'package:lsi_mobile/core/models/requests/user_details/home_address.dart';
import 'package:lsi_mobile/core/models/requests/user_details/id_card.dart';
import 'package:lsi_mobile/core/models/requests/user_details/linkedin.dart';
import 'package:lsi_mobile/core/models/requests/user_details/next_of_kin.dart';
import 'package:lsi_mobile/core/models/requests/user_details/profile.dart';
import 'package:lsi_mobile/core/models/requests/user_details/remita.dart';
import 'package:lsi_mobile/core/models/requests/user_details/twitter.dart';
import 'package:lsi_mobile/core/models/requests/user_details/work.dart';

import 'education.dart';
import 'expenses.dart';

part 'user_details_request.g.dart';

@JsonSerializable(nullable: false, explicitToJson: true)
class UserDetailsRequest extends TokenRequest {
  final Profile profile;
  @JsonKey(name: "next_of_kin")
  final NextOfKin nextOfKin;
  final Education education;
  @JsonKey(name: "home_address")
  final HomeAddress homeAddress;
  final Work work;
  final Expenses expenses;
  final Facebook facebook;
  final Twitter twitter;
  final Linkedin linkedin;
  final BVN bvn;
  final Remita remita;
  @JsonKey(name: "company_profile")
  final CompanyProfile companyProfile;
  final List directors;
  @JsonKey(name: "business_income")
  final HomeAddress businessIncome;
  @JsonKey(name: "operating_expenses")
  final HomeAddress operatingExpenses;
  @JsonKey(name: "business_address")
  final HomeAddress businessAddress;
  @JsonKey(name: "idcard")
  final IdCard idCard;

  UserDetailsRequest({
    this.profile,
    this.nextOfKin,
    this.education,
    this.homeAddress,
    this.work,
    this.expenses,
    this.facebook,
    this.twitter,
    this.linkedin,
    this.bvn,
    this.remita,
    this.companyProfile,
    this.directors,
    this.businessIncome,
    this.operatingExpenses,
    this.businessAddress,
    this.idCard,
  });

  factory UserDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsRequestToJson(this);
}
