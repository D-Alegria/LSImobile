import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/business_address/business_address.dart';
import 'package:lsi_mobile/core/models/dto/business_income/business_income.dart';
import 'package:lsi_mobile/core/models/dto/company_profile/company_profile.dart';
import 'package:lsi_mobile/core/models/dto/director/director.dart';
import 'package:lsi_mobile/core/models/dto/docs/docs.dart';
import 'package:lsi_mobile/core/models/dto/education/education.dart';
import 'package:lsi_mobile/core/models/dto/expenses/expenses.dart';
import 'package:lsi_mobile/core/models/dto/home_address/home_address.dart';
import 'package:lsi_mobile/core/models/dto/id_card/id_card.dart';
import 'package:lsi_mobile/core/models/dto/next_of_kin/next_of_kin.dart';
import 'package:lsi_mobile/core/models/dto/operating_expenses/operating_expenses.dart';
import 'package:lsi_mobile/core/models/dto/paystack/paystack.dart';
import 'package:lsi_mobile/core/models/dto/user_details_profile/profile.dart';
import 'package:lsi_mobile/core/models/dto/work/work.dart';

part 'loan_request.freezed.dart';

part 'loan_request.g.dart';

@freezed
abstract class LoanRequest with _$LoanRequest {
  @JsonSerializable(explicitToJson: true)
  factory LoanRequest({
    @nullable Profile profile,
    @nullable Request request,
    @nullable @JsonKey(name: "next_of_kin") NextOfKin nextOfKin,
    @nullable @JsonKey(name: "home_address") HomeAddress homeAddress,
    @nullable Account account,
    @nullable Education education,
    @nullable Work work,
    @nullable Expenses expenses,
    @nullable @JsonKey(name: "identity") IdCard idCard,
    @nullable Paystack paystack,
    @nullable List<Doc> documents,
    @nullable @JsonKey(name: "company_profile") CompanyProfile companyProfile,
    @nullable List<Director> directors,
    @nullable
    @JsonKey(name: "business_address")
        BusinessAddress businessAddress,
    @nullable @JsonKey(name: "business_income") BusinessIncome businessIncome,
    @nullable
    @JsonKey(name: "business_expenses")
        OperatingExpenses operatingExpenses,
  }) = _LoanRequest;

  factory LoanRequest.fromJson(Map<String, dynamic> json) =>
      _$LoanRequestFromJson(json);
}

@freezed
abstract class Request with _$Request {
  @JsonSerializable(explicitToJson: true)
  factory Request({
    @nullable String amount,
    @nullable String tenor,
    @nullable @JsonKey(name: "product_id") String productId,
  }) = _Request;

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}

@freezed
abstract class Account with _$Account {
  @JsonSerializable(explicitToJson: true)
  factory Account({
    @nullable  String id,
    @nullable @JsonKey(name: "account_no") String accountNo,
    @nullable @JsonKey(name: "account_name") String accountName,
    @nullable  String bvn,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
