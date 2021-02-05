// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanProduct _$LoanProductFromJson(Map<String, dynamic> json) {
  return LoanProduct(
    productType: json['PRODUCT_TYPE'] as String,
    cardRequestFee: json['CARD_REQUEST_FEE'] as String,
    baseDurationType: json['BASE_DURATION_TYPE'] as String,
    minLoanDurationDays: json['MIN_LOAN_DURATION_DAYS'] as String,
    maxLoanDurationDays: json['MAX_LOAN_DURATION_DAYS'] as String,
    defaultDocs: (json['DEFAULT_DOCS'] as List)
        ?.map((e) => e == null ? null : Doc.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    loanDuration: json['LOAN_DURATION'] as String,
    maxLoanDuration: json['MAX_LOAN_DURATION'] as String,
    minimumAmount: json['MINIMUM_AMOUNT'] as String,
    maximumAmount: json['MAXIMUM_AMOUNT'] as String,
    loanProductId: json['LOAN_PRODUCT_ID'] as String,
    loanTitle: json['LOAN_TITLE'] as String,
    loanDescription: json['LOAN_DESCRIPTION'] as String,
    loanType: json['LOAN_TYPE'] as String,
    includeTermsInContract: json['INCLUDE_TERMS_IN_CONTRACT'] as String,
    loanInterestType: json['LOAN_INTEREST_TYPE'] as String,
    loanInterest: json['LOAN_INTEREST'] as String,
  );
}

Map<String, dynamic> _$LoanProductToJson(LoanProduct instance) =>
    <String, dynamic>{
      'PRODUCT_TYPE': instance.productType,
      'CARD_REQUEST_FEE': instance.cardRequestFee,
      'BASE_DURATION_TYPE': instance.baseDurationType,
      'MIN_LOAN_DURATION_DAYS': instance.minLoanDurationDays,
      'MAX_LOAN_DURATION_DAYS': instance.maxLoanDurationDays,
      'DEFAULT_DOCS': instance.defaultDocs,
      'LOAN_DURATION': instance.loanDuration,
      'MAX_LOAN_DURATION': instance.maxLoanDuration,
      'LOAN_PRODUCT_ID': instance.loanProductId,
      'LOAN_TITLE': instance.loanTitle,
      'LOAN_DESCRIPTION': instance.loanDescription,
      'LOAN_TYPE': instance.loanType,
      'INCLUDE_TERMS_IN_CONTRACT': instance.includeTermsInContract,
      'LOAN_INTEREST_TYPE': instance.loanInterestType,
      'LOAN_INTEREST': instance.loanInterest,
      'MINIMUM_AMOUNT': instance.minimumAmount,
      'MAXIMUM_AMOUNT': instance.maximumAmount,
    };
