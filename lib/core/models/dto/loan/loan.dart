import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';

part 'loan.g.dart';

@JsonSerializable()
class Loan {
  @JsonKey(name: "LAST_ACTIVITY_DATE")
  final DateTime lastActivityDate;
  @JsonKey(name: "REQUEST_ID")
  final String requestId;
  @JsonKey(name: "REQUEST_PRINCIPAL")
  final String requestPrincipal;
  @JsonKey(name: "IS_ACTIVE")
  final String isActive;
  @JsonKey(name: "DATE_ADDED")
  final DateTime dateAdded;
  @JsonKey(name: "LISTING_VIEWS")
  final dynamic listingViews;
  @JsonKey(name: "PEOPLE_ID")
  final String peopleId;
  @JsonKey(name: "PLATFORM_ID")
  final String platformId;
  @JsonKey(name: "EXPIRATION_DATE")
  final String expirationDate;
  @JsonKey(name: "PERCENTAGE_FUNDED")
  final String percentageFunded;
  @JsonKey(name: "DESCRIPTION")
  final String description;
  @JsonKey(name: "REQUEST_TENOR")
  final String requestTenor;
  @JsonKey(name: "LOAN_DURATION")
  final String loanDuration;
  @JsonKey(name: "BID_RATE")
  final String bidRate;
  @JsonKey(name: "INTEREST_DURATION")
  final String interestDuration;
  @JsonKey(name: "REQUEST_PERIOD_ID")
  final String requestPeriodId;
  @JsonKey(name: "offer_link")
  final dynamic offerLink;
  @JsonKey(name: "STATUS")
  final dynamic status;
  @JsonKey(name: "ACTIVITY_STATUS_ID")
  final String activityStatusId;
  @JsonKey(name: "ONLY_ONE_LENDER")
  final String onlyOneLender;
  @JsonKey(name: "IS_ELIGIBLE")
  final String isEligible;
  @JsonKey(name: "LOAN_STATUS")
  final String loanStatus;
  @JsonKey(name: "REQUEST_RATE_PERIOD_ID")
  final String requestRatePeriodId;
  @JsonKey(name: "REQUEST_RATE")
  final String requestRate;
  @JsonKey(name: "IS_CLOSED")
  final String isClosed;
  @JsonKey(name: "REPAYMENT_STARTED_WHEN")
  final dynamic repaymentStartedWhen;
  @JsonKey(name: "TITLE")
  final String title;
  @JsonKey(name: "CONNECTED_CARD_ID")
  final String connectedCardId;
  @JsonKey(name: "CONNECTED_ACCOUNT_ID")
  final String connectedAccountId;
  @JsonKey(name: "SCHEDULE_HAS_BEEN_SAVED")
  final String scheduleHasBeenSaved;
  @JsonKey(name: "TOTAL_UPFRONTED_FEES")
  final String totalUpFrontedFees;
  @JsonKey(name: "HOW_MUCH_WAS_GIVEN")
  final String howMuchWasGiven;
  @JsonKey(name: "IS_ACCEPTED")
  final String isAccepted;
  @JsonKey(name: "LOAN_ID")
  final String loanId;
  @JsonKey(name: "REPAYMENT_TYPE_ID")
  final dynamic repaymentTypeId;
  @JsonKey(name: "RECURRENT_BILLING_TOKEN")
  final dynamic recurrentBillingToken;
  @JsonKey(name: "IS_PEER_TO_PEER")
  final String isPeerToPeer;
  @JsonKey(name: "ADDED_TO_PAYMENT_QUEUE")
  final String addedToPaymentQueue;
  @JsonKey(name: "UPFRONTED_INTERESTS")
  final String upFrontedInterests;
  @JsonKey(name: "DISBURSEMENT_DATE")
  final DateTime disbursementDate;
  @JsonKey(name: "REQUEST_FOR_ACTION")
  final dynamic requestForAction;
  @JsonKey(name: "PAYSTACK_AUTHORIZATION_CODE")
  final dynamic paystackAuthorizationCode;
  @JsonKey(name: "CONTRACT_DOC_SENT")
  final String contractDocSent;
  @JsonKey(name: "FEE_TYPE")
  final String feeType;
  @JsonKey(name: "TOTAL_FEES_AND_CHARGES")
  final String totalFeesAndCharges;
  @JsonKey(name: "LOAN_REASON")
  final String loanReason;
  @JsonKey(name: "REQUEST_STATUS")
  final String requestStatus;
  @JsonKey(name: "TOTAL_REPAYMENT")
  final String totalRepayment;
  @JsonKey(name: "TFR")
  final String tfr;
  @JsonKey(name: "HMP")
  final String hmp;
  @JsonKey(name: "HMR")
  final String hmr;
  @JsonKey(name: "NEXT_PAYMENT_DATE")
  final String nextPaymentDate;
  @JsonKey(name: "NEXT_PAYMENT_AMOUNT")
  final String nextPaymentAmount;
  @JsonKey(name: "TL")
  final dynamic tl;
  @JsonKey(name: "TF")
  final dynamic tf;
  @JsonKey(name: "AMOUNT_FUNDED")
  final String amountFunded;
  @JsonKey(name: "AMOUNT_LEFT")
  final String amountLeft;
  final List transactions;
  @JsonKey(name: "LENDERS")
  final int lenders;
  @JsonKey(name: "LENDERS_")
  final List lenders_;
  final Repayment repayment;
  @JsonKey(name: "connected_card")
  final dynamic connectedCard;

  Loan({
    this.lastActivityDate,
    this.requestId,
    this.requestPrincipal,
    this.isActive,
    this.dateAdded,
    this.listingViews,
    this.peopleId,
    this.platformId,
    this.expirationDate,
    this.percentageFunded,
    this.description,
    this.requestTenor,
    this.loanDuration,
    this.requestPeriodId,
    this.offerLink,
    this.status,
    this.activityStatusId,
    this.onlyOneLender,
    this.isEligible,
    this.loanStatus,
    this.isClosed,
    this.repaymentStartedWhen,
    this.title,
    this.connectedCardId,
    this.connectedAccountId,
    this.scheduleHasBeenSaved,
    this.totalUpFrontedFees,
    this.howMuchWasGiven,
    this.isAccepted,
    this.loanId,
    this.repaymentTypeId,
    this.recurrentBillingToken,
    this.isPeerToPeer,
    this.addedToPaymentQueue,
    this.upFrontedInterests,
    this.disbursementDate,
    this.requestForAction,
    this.paystackAuthorizationCode,
    this.contractDocSent,
    this.feeType,
    this.totalFeesAndCharges,
    this.loanReason,
    this.totalRepayment,
    this.tfr,
    this.hmp,
    this.hmr,
    this.nextPaymentDate,
    this.nextPaymentAmount,
    this.tl,
    this.tf,
    this.amountFunded,
    this.amountLeft,
    this.transactions,
    this.lenders,
    this.lenders_,
    this.repayment,
    this.connectedCard,
    this.bidRate,
    this.interestDuration,
    this.requestRatePeriodId,
    this.requestRate,
    this.requestStatus,
  });

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);

  Map<String, dynamic> toJson() => _$LoanToJson(this);
}

@JsonSerializable()
class Repayment {
  final List<RepaymentSchedule> schedule;
  final double debts;
  final double paid;
  final double balance;

  Repayment({this.schedule, this.debts, this.paid, this.balance});

  factory Repayment.fromJson(Map<String, dynamic> json) =>
      _$RepaymentFromJson(json);

  Map<String, dynamic> toJson() => _$RepaymentToJson(this);
}
