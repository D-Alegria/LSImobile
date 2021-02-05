import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/docs/docs.dart';

part 'loan_product.g.dart';

@JsonSerializable()
class LoanProduct {
  @JsonKey(name: "PRODUCT_TYPE")
  final String productType;
  @JsonKey(name: "CARD_REQUEST_FEE")
  final String cardRequestFee;
  @JsonKey(name: "BASE_DURATION_TYPE")
  final String baseDurationType;
  @JsonKey(name: "MIN_LOAN_DURATION_DAYS")
  final String minLoanDurationDays;
  @JsonKey(name: "MAX_LOAN_DURATION_DAYS")
  final String maxLoanDurationDays;
  @JsonKey(name: "DEFAULT_DOCS")
  final List<Doc> defaultDocs;
  @JsonKey(name: "LOAN_DURATION")
  final String loanDuration;
  @JsonKey(name: "MAX_LOAN_DURATION")
  final String maxLoanDuration;
  @JsonKey(name: "LOAN_PRODUCT_ID")
  final String loanProductId;
  @JsonKey(name: "LOAN_TITLE")
  final String loanTitle;
  @JsonKey(name: "LOAN_DESCRIPTION")
  final String loanDescription;
  @JsonKey(name: "LOAN_TYPE")
  final String loanType;
  @JsonKey(name: "INCLUDE_TERMS_IN_CONTRACT")
  final String includeTermsInContract;
  @JsonKey(name: "LOAN_INTEREST_TYPE")
  final String loanInterestType;
  @JsonKey(name: "LOAN_INTEREST")
  final String loanInterest;
  @JsonKey(name: "MINIMUM_AMOUNT")
  final String minimumAmount;
  @JsonKey(name: "MAXIMUM_AMOUNT")
  final String maximumAmount;

  LoanProduct({
    this.productType,
    this.cardRequestFee,
    this.baseDurationType,
    this.minLoanDurationDays,
    this.maxLoanDurationDays,
    this.defaultDocs,
    this.loanDuration,
    this.maxLoanDuration,
    this.minimumAmount,
    this.maximumAmount,
    this.loanProductId,
    this.loanTitle,
    this.loanDescription,
    this.loanType,
    this.includeTermsInContract,
    this.loanInterestType,
    this.loanInterest,
  });

  factory LoanProduct.fromJson(Map<String, dynamic> json) =>
      _$LoanProductFromJson(json);

  Map<String, dynamic> toJson() => _$LoanProductToJson(this);
}
