// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loan _$LoanFromJson(Map<String, dynamic> json) {
  return Loan(
    lastActivityDate: json['LAST_ACTIVITY_DATE'] == null
        ? null
        : DateTime.parse(json['LAST_ACTIVITY_DATE'] as String),
    requestId: json['REQUEST_ID'] as String,
    requestPrincipal: json['REQUEST_PRINCIPAL'] as String,
    isActive: json['IS_ACTIVE'] as String,
    dateAdded: json['DATE_ADDED'] == null
        ? null
        : DateTime.parse(json['DATE_ADDED'] as String),
    listingViews: json['LISTING_VIEWS'],
    peopleId: json['PEOPLE_ID'] as String,
    platformId: json['PLATFORM_ID'] as String,
    expirationDate: json['EXPIRATION_DATE'] as String,
    percentageFunded: json['PERCENTAGE_FUNDED'] as String,
    description: json['DESCRIPTION'] as String,
    requestTenor: json['REQUEST_TENOR'] as String,
    loanDuration: json['LOAN_DURATION'] as String,
    requestPeriodId: json['REQUEST_PERIOD_ID'] as String,
    offerLink: json['offer_link'],
    status: json['STATUS'],
    activityStatusId: json['ACTIVITY_STATUS_ID'] as String,
    onlyOneLender: json['ONLY_ONE_LENDER'] as String,
    isEligible: json['IS_ELIGIBLE'] as String,
    loanStatus: json['LOAN_STATUS'] as String,
    isClosed: json['IS_CLOSED'] as String,
    repaymentStartedWhen: json['REPAYMENT_STARTED_WHEN'],
    title: json['TITLE'] as String,
    connectedCardId: json['CONNECTED_CARD_ID'] as String,
    connectedAccountId: json['CONNECTED_ACCOUNT_ID'] as String,
    scheduleHasBeenSaved: json['SCHEDULE_HAS_BEEN_SAVED'] as String,
    totalUpFrontedFees: json['TOTAL_UPFRONTED_FEES'] as String,
    howMuchWasGiven: json['HOW_MUCH_WAS_GIVEN'] as String,
    isAccepted: json['IS_ACCEPTED'] as String,
    loanId: json['LOAN_ID'] as String,
    repaymentTypeId: json['REPAYMENT_TYPE_ID'],
    recurrentBillingToken: json['RECURRENT_BILLING_TOKEN'],
    isPeerToPeer: json['IS_PEER_TO_PEER'] as String,
    addedToPaymentQueue: json['ADDED_TO_PAYMENT_QUEUE'] as String,
    upFrontedInterests: json['UPFRONTED_INTERESTS'] as String,
    disbursementDate: json['DISBURSEMENT_DATE'] == null
        ? null
        : DateTime.parse(json['DISBURSEMENT_DATE'] as String),
    requestForAction: json['REQUEST_FOR_ACTION'],
    paystackAuthorizationCode: json['PAYSTACK_AUTHORIZATION_CODE'],
    contractDocSent: json['CONTRACT_DOC_SENT'] as String,
    feeType: json['FEE_TYPE'] as String,
    totalFeesAndCharges: json['TOTAL_FEES_AND_CHARGES'] as String,
    loanReason: json['LOAN_REASON'] as String,
    totalRepayment: json['TOTAL_REPAYMENT'] as String,
    tfr: json['TFR'] as String,
    hmp: json['HMP'] as String,
    hmr: json['HMR'] as String,
    nextPaymentDate: json['NEXT_PAYMENT_DATE'] as String,
    nextPaymentAmount: json['NEXT_PAYMENT_AMOUNT'] as String,
    tl: json['TL'],
    tf: json['TF'],
    amountFunded: json['AMOUNT_FUNDED'] as String,
    amountLeft: json['AMOUNT_LEFT'] as String,
    transactions: json['transactions'] as List,
    lenders: json['LENDERS'] as int,
    lenders_: json['LENDERS_'] as List,
    repayment: json['repayment'] == null
        ? null
        : Repayment.fromJson(json['repayment'] as Map<String, dynamic>),
    connectedCard: json['connected_card'],
    bidRate: json['BID_RATE'] as String,
    interestDuration: json['INTEREST_DURATION'] as String,
    requestRatePeriodId: json['REQUEST_RATE_PERIOD_ID'] as String,
    requestRate: json['REQUEST_RATE'] as String,
    requestStatus: json['REQUEST_STATUS'] as String,
  );
}

Map<String, dynamic> _$LoanToJson(Loan instance) => <String, dynamic>{
      'LAST_ACTIVITY_DATE': instance.lastActivityDate?.toIso8601String(),
      'REQUEST_ID': instance.requestId,
      'REQUEST_PRINCIPAL': instance.requestPrincipal,
      'IS_ACTIVE': instance.isActive,
      'DATE_ADDED': instance.dateAdded?.toIso8601String(),
      'LISTING_VIEWS': instance.listingViews,
      'PEOPLE_ID': instance.peopleId,
      'PLATFORM_ID': instance.platformId,
      'EXPIRATION_DATE': instance.expirationDate,
      'PERCENTAGE_FUNDED': instance.percentageFunded,
      'DESCRIPTION': instance.description,
      'REQUEST_TENOR': instance.requestTenor,
      'LOAN_DURATION': instance.loanDuration,
      'BID_RATE': instance.bidRate,
      'INTEREST_DURATION': instance.interestDuration,
      'REQUEST_PERIOD_ID': instance.requestPeriodId,
      'offer_link': instance.offerLink,
      'STATUS': instance.status,
      'ACTIVITY_STATUS_ID': instance.activityStatusId,
      'ONLY_ONE_LENDER': instance.onlyOneLender,
      'IS_ELIGIBLE': instance.isEligible,
      'LOAN_STATUS': instance.loanStatus,
      'REQUEST_RATE_PERIOD_ID': instance.requestRatePeriodId,
      'REQUEST_RATE': instance.requestRate,
      'IS_CLOSED': instance.isClosed,
      'REPAYMENT_STARTED_WHEN': instance.repaymentStartedWhen,
      'TITLE': instance.title,
      'CONNECTED_CARD_ID': instance.connectedCardId,
      'CONNECTED_ACCOUNT_ID': instance.connectedAccountId,
      'SCHEDULE_HAS_BEEN_SAVED': instance.scheduleHasBeenSaved,
      'TOTAL_UPFRONTED_FEES': instance.totalUpFrontedFees,
      'HOW_MUCH_WAS_GIVEN': instance.howMuchWasGiven,
      'IS_ACCEPTED': instance.isAccepted,
      'LOAN_ID': instance.loanId,
      'REPAYMENT_TYPE_ID': instance.repaymentTypeId,
      'RECURRENT_BILLING_TOKEN': instance.recurrentBillingToken,
      'IS_PEER_TO_PEER': instance.isPeerToPeer,
      'ADDED_TO_PAYMENT_QUEUE': instance.addedToPaymentQueue,
      'UPFRONTED_INTERESTS': instance.upFrontedInterests,
      'DISBURSEMENT_DATE': instance.disbursementDate?.toIso8601String(),
      'REQUEST_FOR_ACTION': instance.requestForAction,
      'PAYSTACK_AUTHORIZATION_CODE': instance.paystackAuthorizationCode,
      'CONTRACT_DOC_SENT': instance.contractDocSent,
      'FEE_TYPE': instance.feeType,
      'TOTAL_FEES_AND_CHARGES': instance.totalFeesAndCharges,
      'LOAN_REASON': instance.loanReason,
      'REQUEST_STATUS': instance.requestStatus,
      'TOTAL_REPAYMENT': instance.totalRepayment,
      'TFR': instance.tfr,
      'HMP': instance.hmp,
      'HMR': instance.hmr,
      'NEXT_PAYMENT_DATE': instance.nextPaymentDate,
      'NEXT_PAYMENT_AMOUNT': instance.nextPaymentAmount,
      'TL': instance.tl,
      'TF': instance.tf,
      'AMOUNT_FUNDED': instance.amountFunded,
      'AMOUNT_LEFT': instance.amountLeft,
      'transactions': instance.transactions,
      'LENDERS': instance.lenders,
      'LENDERS_': instance.lenders_,
      'repayment': instance.repayment,
      'connected_card': instance.connectedCard,
    };

Repayment _$RepaymentFromJson(Map<String, dynamic> json) {
  return Repayment(
    schedule: (json['schedule'] as List)
        ?.map((e) => e == null
            ? null
            : RepaymentSchedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    debts: (json['debts'] as num)?.toDouble(),
    paid: (json['paid'] as num)?.toDouble(),
    balance: (json['balance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RepaymentToJson(Repayment instance) => <String, dynamic>{
      'schedule': instance.schedule,
      'debts': instance.debts,
      'paid': instance.paid,
      'balance': instance.balance,
    };
