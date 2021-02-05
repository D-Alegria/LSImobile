// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Investment _$InvestmentFromJson(Map<String, dynamic> json) {
  return Investment(
    isActive: json['IS_ACTIVE'] as String,
    isForBreaking: json['IS_FOR_BREAKING'] as String,
    investmentCategoryId: json['INVESTMENT_CATEGORY_ID'] as String,
    investmentId: json['INVESTMENT_ID'] as String,
    requestPrincipal: json['REQUEST_PRINCIPAL'] as String,
    requestTenor: json['REQUEST_TENOR'] as String,
    profileVisibility: json['PROFILE_VISIBILITY'],
    isVerified: json['IS_VERIFIED'] as String,
    peopleId: json['PEOPLE_ID'] as String,
    legalName: json['LEGAL_NAME'] as String,
    alias: json['ALIAS'],
    fileName: json['FILE_NAME'] as String,
    requestRate: json['REQUEST_RATE'] as String,
    percentageFunded: json['PERCENTAGE_FUNDED'],
    occupationId: json['OCCUPATION_ID'] as String,
    dateAdded: json['DATE_ADDED'] == null
        ? null
        : DateTime.parse(json['DATE_ADDED'] as String),
    finalInvestment: json['FINAL_INVESTMENT'],
    maturityValue: json['MATURITY_VALUE'] as String,
    totalInterests: json['TOTAL_INTERESTS'] as String,
    interestRepayment: json['INTEREST_REPAYMENT'] as String,
    fundsReceivedDate: json['FUNDS_RECEIVED_DATE'] == null
        ? null
        : DateTime.parse(json['FUNDS_RECEIVED_DATE'] as String),
    bidPeriodId: json['BID_PERIOD_ID'] as String,
    bidRatePeriodId: json['BID_RATE_PERIOD_ID'] as String,
    requestId: json['REQUEST_ID'] as String,
    maturityDate: json['MATURITY_DATE'] == null
        ? null
        : DateTime.parse(json['MATURITY_DATE'] as String),
    currentBalance: json['CURRENT_BALANCE'] as String,
    accruedInterests: json['ACCRUED_INTERESTS'] as String,
    investmentTitle: json['INVESTMENT_TITLE'] as String,
    productType: json['PRODUCT_TYPE'] as String,
    targetTitle: json['TARGET_TITLE'],
    targetAmount: json['TARGET_AMOUNT'],
    guarantorRequests: json['GUARANTOR_REQUESTS'],
    deductEquity: json['DEDUCT_EQUITY'],
    loanDuration: json['LOAN_DURATION'] as String,
    interestDuration: json['INTEREST_DURATION'] as String,
    investmentProductId: json['INVESTMENT_PRODUCT_ID'] as String,
    isClosed: json['IS_CLOSED'] as String,
  );
}

Map<String, dynamic> _$InvestmentToJson(Investment instance) =>
    <String, dynamic>{
      'IS_ACTIVE': instance.isActive,
      'IS_FOR_BREAKING': instance.isForBreaking,
      'INVESTMENT_CATEGORY_ID': instance.investmentCategoryId,
      'INVESTMENT_ID': instance.investmentId,
      'REQUEST_PRINCIPAL': instance.requestPrincipal,
      'REQUEST_TENOR': instance.requestTenor,
      'PROFILE_VISIBILITY': instance.profileVisibility,
      'IS_VERIFIED': instance.isVerified,
      'PEOPLE_ID': instance.peopleId,
      'LEGAL_NAME': instance.legalName,
      'ALIAS': instance.alias,
      'FILE_NAME': instance.fileName,
      'REQUEST_RATE': instance.requestRate,
      'PERCENTAGE_FUNDED': instance.percentageFunded,
      'OCCUPATION_ID': instance.occupationId,
      'DATE_ADDED': instance.dateAdded?.toIso8601String(),
      'FINAL_INVESTMENT': instance.finalInvestment,
      'MATURITY_VALUE': instance.maturityValue,
      'TOTAL_INTERESTS': instance.totalInterests,
      'INTEREST_REPAYMENT': instance.interestRepayment,
      'FUNDS_RECEIVED_DATE': instance.fundsReceivedDate?.toIso8601String(),
      'BID_PERIOD_ID': instance.bidPeriodId,
      'BID_RATE_PERIOD_ID': instance.bidRatePeriodId,
      'REQUEST_ID': instance.requestId,
      'MATURITY_DATE': instance.maturityDate?.toIso8601String(),
      'CURRENT_BALANCE': instance.currentBalance,
      'ACCRUED_INTERESTS': instance.accruedInterests,
      'INVESTMENT_TITLE': instance.investmentTitle,
      'PRODUCT_TYPE': instance.productType,
      'TARGET_TITLE': instance.targetTitle,
      'TARGET_AMOUNT': instance.targetAmount,
      'GUARANTOR_REQUESTS': instance.guarantorRequests,
      'DEDUCT_EQUITY': instance.deductEquity,
      'LOAN_DURATION': instance.loanDuration,
      'INTEREST_DURATION': instance.interestDuration,
      'INVESTMENT_PRODUCT_ID': instance.investmentProductId,
      'IS_CLOSED': instance.isClosed,
    };
