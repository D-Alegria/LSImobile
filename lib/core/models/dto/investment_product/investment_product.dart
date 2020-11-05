import 'package:json_annotation/json_annotation.dart';

part 'investment_product.g.dart';

@JsonSerializable()
class InvestmentProduct {
  @JsonKey(name: "INVESTMENT_PRODUCT_ID")
  final String investmentProductId;
  @JsonKey(name: "INVESTMENT_CATEGORY_ID")
  final String investmentCategoryId;
  @JsonKey(name: "LENDER_ID")
  final String lenderId;
  @JsonKey(name: "DATE_ADDED")
  final String dateAdded;
  @JsonKey(name: "DISBURSEMENT_ACCOUNT_ID")
  final String disbursementAccountId;
  @JsonKey(name: "ADDED_BY")
  final String addedBy;
  @JsonKey(name: "DATE_MODIFIED")
  final String dateModified;
  @JsonKey(name: "STARTING_AMOUNT")
  final String startingAmount;
  @JsonKey(name: "INVESTMENT_AMOUNT")
  final String investmentAmount;
  @JsonKey(name: "TENOR")
  final String tenor;
  @JsonKey(name: "INVESTMENT_PERIODIC_ID")
  final String investmentPeriodicId;
  @JsonKey(name: "INVESTMENT_CURRENCY_ID")
  final String investmentCurrencyId;
  @JsonKey(name: "PERIODIC_CONTRIBUTION")
  final String periodicContribution;
  @JsonKey(name: "STATUS")
  final dynamic status;
  @JsonKey(name: "INTEREST")
  final String interest;
  @JsonKey(name: "INTEREST_PERIOD_ID")
  final String interestPeriodId;
  @JsonKey(name: "ICON")
  final dynamic icon;
  @JsonKey(name: "SLUG")
  final String slug;
  @JsonKey(name: "INVESTMENT_TITLE")
  final String investmentTitle;
  @JsonKey(name: "INVESTMENT_DESCRIPTION")
  final String investmentDescription;
  @JsonKey(name: "IS_PUBLISHED")
  final String isPublished;
  @JsonKey(name: "INVESTMENT_MAX_AMOUNT")
  final String investmentMaxAmount;
  @JsonKey(name: "MAX_INVESTMENT_DURATION")
  final String maxInvestmentDuration;
  @JsonKey(name: "DAYS_PER_YEAR")
  final String daysPerYear;
  @JsonKey(name: "INVESTMENT_OFFICER")
  final String investmentOfficer;
  @JsonKey(name: "DISCOUNT_TYPE")
  final String discountType;
  @JsonKey(name: "ACCRUAL_FREQUENCY")
  final String accrualFrequency;
  @JsonKey(name: "FREQUENCY_OF_CONTRIBUTION")
  final String frequencyOfContribution;
  @JsonKey(name: "INTEREST_RATE_TYPE_ID")
  final String investmentRateTypeId;
  @JsonKey(name: "REPAYMENT_TYPE_ID")
  final String repaymentTypeId;
  @JsonKey(name: "REPAYMENT_FREQUENCY")
  final String repaymentFrequency;
  @JsonKey(name: "MAX_BORROWER_SALARY")
  final String maxBorrowerSalary;
  @JsonKey(name: "HAS_SECURITY_DEPOSIT")
  final String hasSecurityDeposit;
  @JsonKey(name: "SECURITY_DEPOSIT")
  final dynamic securityDeposit;
  @JsonKey(name: "SECURITY_DEPOSIT_INTEREST")
  final dynamic securityDepositInterest;
  @JsonKey(name: "SECURITY_DEPOSIT_EARNS_INTEREST")
  final dynamic securityDepositEarnsInterest;
  @JsonKey(name: "LOAN_SECUIRTY_NEEDED")
  final dynamic loanSecurityNeeded;
  @JsonKey(name: "LOAN_SECURITY")
  final String loanSecurity;
  @JsonKey(name: "CHARGES")
  final dynamic charges;
  @JsonKey(name: "FINES")
  final dynamic fines;
  @JsonKey(name: "VALID_CARD_REQUIRED")
  final dynamic validCardRequired;
  @JsonKey(name: "REPAYMENT_CYCLE")
  final dynamic repaymentCycle;
  @JsonKey(name: "MAX_NUM_REPAYMENTS")
  final dynamic maxNumRepayments;
  @JsonKey(name: "MIN_NUM_REPAYMENTS")
  final dynamic minNumRepayments;
  @JsonKey(name: "REPAYMENT_SOURCE")
  final dynamic repaymentSource;
  @JsonKey(name: "DISBURSEMENT_MODE")
  final String disbursementMode;
  @JsonKey(name: "INSTALLMENT_FREQUENCY")
  final dynamic installmentFrequency;
  @JsonKey(name: "GRACE_PERIOD")
  final dynamic gracePeriod;
  @JsonKey(name: "IS_VANILLA")
  final dynamic isVanilla;
  @JsonKey(name: "LOAN_OFFICER")
  final dynamic loanOfficer;
  @JsonKey(name: "DISBURSEMENT_DATE_TYPE")
  final String disbursementDateType;
  @JsonKey(name: "DISBURSEMENT_DATE_PLUS")
  final String disbursementDatePlus;
  @JsonKey(name: "DISBURSEMENT_BANK")
  final String disbursementBank;
  @JsonKey(name: "GRACE_PERIOD_TYPE")
  final dynamic gracePeriodType;
  @JsonKey(name: "EMAIL_MESSAGE_TEMPLATES")
  final String emailMessageTemplates;
  @JsonKey(name: "SMS_MESSAGE_TEMPLATES")
  final String smsMessageTemplates;
  @JsonKey(name: "PRODUCT_CHARGES")
  final String productCharges;
  @JsonKey(name: "SECURITY_DEPOSIT_DEDUCTIBLE")
  final dynamic securityDepositDeductible;
  @JsonKey(name: "ROLLOVER_CHARGES")
  final String rollOverCharges;
  @JsonKey(name: "PRODUCT_FEES")
  final String productFees;
  @JsonKey(name: "REQUIRED_KYC")
  final String requiredKYC;
  @JsonKey(name: "COLLATERAL_DOCS")
  final String collateralDocs;
  @JsonKey(name: "REQUIRED_DOCS")
  final String requiredDocs;
  @JsonKey(name: "DAYS_PER_YEAR1")
  final dynamic daysPerYear1;
  @JsonKey(name: "TYPE_OF_CREDIT")
  final String typeOfCredit;
  @JsonKey(name: "ALLOW_ROLL_OVER")
  final String allowRollOver;
  @JsonKey(name: "ALLOW_MERGING")
  final String allowMerging;
  @JsonKey(name: "MIN_REVOLVING_INSTALLMENT_PAYMENT")
  final dynamic minRevolvingInstallmentPayment;
  @JsonKey(name: "DISBURSEMENT_ACCOUNT_NUMBER")
  final String disbursementAccountNumber;
  @JsonKey(name: "ALLOW_REPAYMENT_AUTODEBIT")
  final dynamic allowRepaymentAutoDebit;
  @JsonKey(name: "MONTHLY_PERIOD")
  final String monthlyPeriod;
  @JsonKey(name: "UNDERWRITING_TEMPLATE")
  final String underWritingTemplate;
  @JsonKey(name: "REQUIRES_INTEREST_UPFRONT")
  final dynamic requiresInterestUpFront;
  @JsonKey(name: "COMPUNDING_FREQUENCY")
  final String compoundingFrequency;
  @JsonKey(name: "INVESTMENT_GL_ACCOUNTS")
  final dynamic investmentGlAccounts;
  @JsonKey(name: "MIN_SALARY_ACCEPTABLE")
  final String minSalaryAcceptable;
  @JsonKey(name: "PREFERRED_BORROWER_GENDER")
  final String preferredBorrowerGender;
  @JsonKey(name: "MINIMUM_RATINGS_ID")
  final String minimumRatingsId;
  @JsonKey(name: "NO_OF_BANK_STATEMENTS")
  final String noOfBankStatements;
  @JsonKey(name: "NO_OF_PAYSLIPS")
  final String noOfPaySlips;
  @JsonKey(name: "MINIMUM_GUARANTORS")
  final String minimumGuarantors;
  @JsonKey(name: "PREFERRED_BORROWER_OCCUPATION")
  final String preferredBorrowerOccupation;
  @JsonKey(name: "QUALIFYING_DOCUMENTS")
  final String qualifyingDocuments;
  @JsonKey(name: "PREFERRED_OCCUPATION_SECTOR")
  final String preferredOccupationSector;
  @JsonKey(name: "GUARANTOR_OCCUPATION_SECTOR")
  final String guarantorOccupationSector;
  @JsonKey(name: "PERIODIC_CONTRIBUTION_MAX")
  final String periodicContributionMax;
  @JsonKey(name: "SCHEDULE_TYPE")
  final String scheduleType;
  @JsonKey(name: "IS_WEB")
  final String isWeb;
  @JsonKey(name: "IS_MOBILE")
  final String isMobile;
  @JsonKey(name: "IS_EDITABLE")
  final String isEditable;
  @JsonKey(name: "ASSIGN_LOAN_OFFICER")
  final String assignLoanOfficer;
  @JsonKey(name: "LOAN_INTERVAL")
  final String loanInterval;
  @JsonKey(name: "DURATION_INTERVAL")
  final String durationInterval;
  @JsonKey(name: "INVESTMENT_SUB_CATEGORY_ID")
  final String investmentSubCategoryId;
  @JsonKey(name: "APPLY_PENALTY")
  final String applyPenalty;
  @JsonKey(name: "PENALTY_TYPE")
  final String penaltyType;
  @JsonKey(name: "PENALTY_VALUE")
  final String penaltyValue;
  @JsonKey(name: "IS_DEFAULT")
  final String isDefault;
  @JsonKey(name: "DEFAULT_DOCS")
  final dynamic defaultDocs;
  @JsonKey(name: "QUALIFYING_DOCUMENTSLOAN_OPTIONS")
  final dynamic qualifyingDocumentsLoanOptions;
  @JsonKey(name: "MUST_NOTIFY_ACCOUNT_OFFICER")
  final dynamic mustNotifyAccountOfficer;
  @JsonKey(name: "ENABLE_GEOTAGGING")
  final String enableGeoTagging;
  @JsonKey(name: "GPS_RETRY")
  final String gpsRetry;
  @JsonKey(name: "MUST_NOFITY_ACCOUNT_OFFICER")
  final String mustNotifyAccountOfficer2;
  @JsonKey(name: "NOTIFICATION_EMAIL")
  final dynamic notificationEmail;
  @JsonKey(name: "LOAN_OPTIONS")
  final dynamic loanOptions;
  @JsonKey(name: "PRODUCT_TYPE")
  final String productType;
  @JsonKey(name: "INTEREST_CALCULATION_FREQUENCY")
  final String interestCalculationFrequency;
  @JsonKey(name: "COMPOUNDING_FREQUENCY")
  final String compoundingFrequency1;
  @JsonKey(name: "MINIMUM_INTEREST_BALANCE")
  final String minimumInterestBalance;
  @JsonKey(name: "HAS_INSURANCE")
  final String hasInsurance;
  @JsonKey(name: "INSURANCE_PROVIDER")
  final String insuranceProvider;
  @JsonKey(name: "AVAILABLE_UNITS")
  final String availableUnits;
  @JsonKey(name: "START_DATE")
  final dynamic startDate;
  @JsonKey(name: "END_DATE")
  final dynamic endDate;
  @JsonKey(name: "OFFER_CLOSING_DATE")
  final dynamic offerClosingDate;
  @JsonKey(name: "ATTACHMENTS")
  final dynamic attachments;
  @JsonKey(name: "APPLY_BONUS")
  final String applyBonus;
  @JsonKey(name: "BONUS_TYPE")
  final String bonusType;
  @JsonKey(name: "ENABLE_TOP_UP")
  final String enableTopUp;
  @JsonKey(name: "ENABLE_WITHDRAWAL")
  final String enableWithdrawal;
  @JsonKey(name: "ENABLE_ROLLOVER")
  final String enableRollover;
  @JsonKey(name: "MAX_WITHDRAWAL_PERCENTAGE")
  final String maxWithdrawalPercentage;
  @JsonKey(name: "signature_enabled")
  final dynamic signatureEnabled;
  @JsonKey(name: "signature_left_enabled")
  final dynamic signatureLeftEnabled;
  @JsonKey(name: "offer_body")
  final dynamic offerBody;
  @JsonKey(name: "date_visible")
  final dynamic dateVisible;
  @JsonKey(name: "offer_letter_name")
  final dynamic offerLetterName;
  @JsonKey(name: "offer_letter_logo")
  final dynamic offerLetterLogo;
  @JsonKey(name: "offer_letter_address")
  final dynamic offerLetterAddress;
  @JsonKey(name: "offer_letter_salutation")
  final dynamic offerLetterSalutation;
  @JsonKey(name: "offer_letter_body")
  final dynamic offerLetterBody;
  @JsonKey(name: "offer_letter_term")
  final dynamic offerLetterTerm;
  @JsonKey(name: "offer_letter_repayment")
  final dynamic offerLetterRepayment;
  @JsonKey(name: "offer_letter_signature")
  final dynamic offerLetterSignature;
  @JsonKey(name: "signature_left")
  final dynamic signatureLeft;
  @JsonKey(name: "signature_right")
  final dynamic signatureRight;
  @JsonKey(name: "offer_letter_subject")
  final dynamic offerLetterSubject;
  @JsonKey(name: "offer_letter_tags")
  final dynamic offerLetterTags;
  @JsonKey(name: "CURRENCY_SHORT_CODE")
  final String currencyShortCode;
  @JsonKey(name: "LD")
  final String ld;
  @JsonKey(name: "INTEREST_DURATION")
  final String interestDuration;
  @JsonKey(name: "ADJECTIVAL")
  final String adjectival;
  @JsonKey(name: "LEGAL_NAME")
  final String legalName;
  @JsonKey(name: "ABBREV")
  final String abbr;

  InvestmentProduct({
    this.investmentProductId,
    this.investmentCategoryId,
    this.lenderId,
    this.dateAdded,
    this.disbursementAccountId,
    this.addedBy,
    this.dateModified,
    this.startingAmount,
    this.investmentAmount,
    this.tenor,
    this.investmentPeriodicId,
    this.investmentCurrencyId,
    this.periodicContribution,
    this.status,
    this.interest,
    this.interestPeriodId,
    this.icon,
    this.slug,
    this.investmentTitle,
    this.investmentDescription,
    this.isPublished,
    this.investmentMaxAmount,
    this.maxInvestmentDuration,
    this.daysPerYear,
    this.investmentOfficer,
    this.discountType,
    this.accrualFrequency,
    this.frequencyOfContribution,
    this.investmentRateTypeId,
    this.repaymentTypeId,
    this.repaymentFrequency,
    this.maxBorrowerSalary,
    this.hasSecurityDeposit,
    this.securityDeposit,
    this.securityDepositInterest,
    this.securityDepositEarnsInterest,
    this.loanSecurityNeeded,
    this.loanSecurity,
    this.charges,
    this.fines,
    this.validCardRequired,
    this.repaymentCycle,
    this.maxNumRepayments,
    this.minNumRepayments,
    this.repaymentSource,
    this.disbursementMode,
    this.installmentFrequency,
    this.gracePeriod,
    this.isVanilla,
    this.loanOfficer,
    this.disbursementDateType,
    this.disbursementDatePlus,
    this.disbursementBank,
    this.gracePeriodType,
    this.emailMessageTemplates,
    this.smsMessageTemplates,
    this.productCharges,
    this.securityDepositDeductible,
    this.rollOverCharges,
    this.productFees,
    this.requiredKYC,
    this.collateralDocs,
    this.requiredDocs,
    this.daysPerYear1,
    this.typeOfCredit,
    this.allowRollOver,
    this.allowMerging,
    this.minRevolvingInstallmentPayment,
    this.disbursementAccountNumber,
    this.allowRepaymentAutoDebit,
    this.monthlyPeriod,
    this.underWritingTemplate,
    this.requiresInterestUpFront,
    this.compoundingFrequency,
    this.investmentGlAccounts,
    this.minSalaryAcceptable,
    this.preferredBorrowerGender,
    this.minimumRatingsId,
    this.noOfBankStatements,
    this.noOfPaySlips,
    this.minimumGuarantors,
    this.preferredBorrowerOccupation,
    this.qualifyingDocuments,
    this.preferredOccupationSector,
    this.guarantorOccupationSector,
    this.periodicContributionMax,
    this.scheduleType,
    this.isWeb,
    this.isMobile,
    this.isEditable,
    this.assignLoanOfficer,
    this.loanInterval,
    this.durationInterval,
    this.investmentSubCategoryId,
    this.applyPenalty,
    this.penaltyType,
    this.penaltyValue,
    this.isDefault,
    this.defaultDocs,
    this.qualifyingDocumentsLoanOptions,
    this.mustNotifyAccountOfficer,
    this.enableGeoTagging,
    this.gpsRetry,
    this.mustNotifyAccountOfficer2,
    this.notificationEmail,
    this.loanOptions,
    this.productType,
    this.interestCalculationFrequency,
    this.compoundingFrequency1,
    this.minimumInterestBalance,
    this.hasInsurance,
    this.insuranceProvider,
    this.availableUnits,
    this.startDate,
    this.endDate,
    this.offerClosingDate,
    this.attachments,
    this.applyBonus,
    this.bonusType,
    this.enableTopUp,
    this.enableWithdrawal,
    this.enableRollover,
    this.maxWithdrawalPercentage,
    this.signatureEnabled,
    this.signatureLeftEnabled,
    this.offerBody,
    this.dateVisible,
    this.offerLetterName,
    this.offerLetterLogo,
    this.offerLetterAddress,
    this.offerLetterSalutation,
    this.offerLetterBody,
    this.offerLetterTerm,
    this.offerLetterRepayment,
    this.offerLetterSignature,
    this.signatureLeft,
    this.signatureRight,
    this.offerLetterSubject,
    this.offerLetterTags,
    this.currencyShortCode,
    this.ld,
    this.interestDuration,
    this.adjectival,
    this.legalName,
    this.abbr,
  });

  factory InvestmentProduct.fromJson(Map<String, dynamic> json) =>
      _$InvestmentProductFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentProductToJson(this);
}
