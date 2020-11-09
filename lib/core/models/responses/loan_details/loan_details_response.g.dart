// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanDetailsResponse _$LoanDetailsResponseFromJson(Map<String, dynamic> json) {
  return LoanDetailsResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : LoanDetailsData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoanDetailsResponseToJson(
        LoanDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

LoanDetailsData _$LoanDetailsDataFromJson(Map<String, dynamic> json) {
  return LoanDetailsData(
    chartAccountTransactions: json['chart_account_transactions'] as List,
    loan: json['loan'] == null
        ? null
        : LoanBalance.fromJson(json['loan'] as Map<String, dynamic>),
    totalDebit: (json['TOTAL_DEBIT'] as num)?.toDouble(),
    totalCredit: (json['TOTAL_CREDIT'] as num)?.toDouble(),
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    timeline: (json['timeline'] as List)
        ?.map((e) =>
            e == null ? null : Timeline.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    loanDetails: json['loandetails'] == null
        ? null
        : Loan.fromJson(json['loandetails'] as Map<String, dynamic>),
    offerLink: json['OFFER_LINK'] == null
        ? null
        : Loan.fromJson(json['OFFER_LINK'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoanDetailsDataToJson(LoanDetailsData instance) =>
    <String, dynamic>{
      'chart_account_transactions': instance.chartAccountTransactions,
      'loan': instance.loan,
      'TOTAL_DEBIT': instance.totalDebit,
      'TOTAL_CREDIT': instance.totalCredit,
      'schedule': instance.schedule,
      'timeline': instance.timeline,
      'loandetails': instance.loanDetails,
      'OFFER_LINK': instance.offerLink,
    };

LoanBalance _$LoanBalanceFromJson(Map<String, dynamic> json) {
  return LoanBalance(
    (json['LOAN_BALANCE'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$LoanBalanceToJson(LoanBalance instance) =>
    <String, dynamic>{
      'LOAN_BALANCE': instance.loanBalance,
    };
