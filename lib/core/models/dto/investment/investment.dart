import 'package:json_annotation/json_annotation.dart';

part 'investment.g.dart';

@JsonSerializable()
class Investment {
  @JsonKey(name: "IS_ACTIVE")
  final String isActive;
  @JsonKey(name: "IS_FOR_BREAKING")
  final String isForBreaking;
  @JsonKey(name: "INVESTMENT_CATEGORY_ID")
  final String investmentCategoryId;
  @JsonKey(name: "INVESTMENT_ID")
  final String investmentId;
  @JsonKey(name: "REQUEST_PRINCIPAL")
  final String requestPrincipal;
  @JsonKey(name: "REQUEST_TENOR")
  final String requestTenor;
  @JsonKey(name: "PROFILE_VISIBILITY")
  final dynamic profileVisibility;
  @JsonKey(name: "IS_VERIFIED")
  final String isVerified;
  @JsonKey(name: "PEOPLE_ID")
  final String peopleId;
  @JsonKey(name: "LEGAL_NAME")
  final String legalName;
  @JsonKey(name: "ALIAS")
  final dynamic alias;
  @JsonKey(name: "FILE_NAME")
  final String fileName;
  @JsonKey(name: "REQUEST_RATE")
  final String requestRate;
  @JsonKey(name: "PERCENTAGE_FUNDED")
  final dynamic percentageFunded;
  @JsonKey(name: "OCCUPATION_ID")
  final String occupationId;
  @JsonKey(name: "DATE_ADDED")
  final DateTime dateAdded;
  @JsonKey(name: "FINAL_INVESTMENT")
  final dynamic finalInvestment;
  @JsonKey(name: "MATURITY_VALUE")
  final String maturityValue;
  @JsonKey(name: "TOTAL_INTERESTS")
  final String totalInterests;
  @JsonKey(name: "INTEREST_REPAYMENT")
  final String interestRepayment;
  @JsonKey(name: "FUNDS_RECEIVED_DATE")
  final DateTime fundsReceivedDate;
  @JsonKey(name: "BID_PERIOD_ID")
  final String bidPeriodId;
  @JsonKey(name: "BID_RATE_PERIOD_ID")
  final String bidRatePeriodId;
  @JsonKey(name: "REQUEST_ID")
  final String requestId;
  @JsonKey(name: "MATURITY_DATE")
  final DateTime maturityDate;
  @JsonKey(name: "CURRENT_BALANCE")
  final String currentBalance;
  @JsonKey(name: "ACCRUED_INTERESTS")
  final String accruedInterests;
  @JsonKey(name: "INVESTMENT_TITLE")
  final String investmentTitle;
  @JsonKey(name: "PRODUCT_TYPE")
  final String productType;
  @JsonKey(name: "TARGET_TITLE")
  final dynamic targetTitle;
  @JsonKey(name: "TARGET_AMOUNT")
  final dynamic targetAmount;
  @JsonKey(name: "GUARANTOR_REQUESTS")
  final dynamic guarantorRequests;
  @JsonKey(name: "DEDUCT_EQUITY")
  final dynamic deductEquity;
  @JsonKey(name: "LOAN_DURATION")
  final String loanDuration;
  @JsonKey(name: "INTEREST_DURATION")
  final String interestDuration;
  @JsonKey(name: "INVESTMENT_PRODUCT_ID")
  final String investmentProductId;
  @JsonKey(name: "IS_CLOSED")
  final String isClosed;

  Investment({
    this.isActive,
    this.isForBreaking,
    this.investmentCategoryId,
    this.investmentId,
    this.requestPrincipal,
    this.requestTenor,
    this.profileVisibility,
    this.isVerified,
    this.peopleId,
    this.legalName,
    this.alias,
    this.fileName,
    this.requestRate,
    this.percentageFunded,
    this.occupationId,
    this.dateAdded,
    this.finalInvestment,
    this.maturityValue,
    this.totalInterests,
    this.interestRepayment,
    this.fundsReceivedDate,
    this.bidPeriodId,
    this.bidRatePeriodId,
    this.requestId,
    this.maturityDate,
    this.currentBalance,
    this.accruedInterests,
    this.investmentTitle,
    this.productType,
    this.targetTitle,
    this.targetAmount,
    this.guarantorRequests,
    this.deductEquity,
    this.loanDuration,
    this.interestDuration,
    this.investmentProductId,
    this.isClosed,
  });

  factory Investment.fromJson(Map<String, dynamic> json) =>
      _$InvestmentFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentToJson(this);
}
