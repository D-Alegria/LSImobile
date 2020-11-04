// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentLoanData _$CurrentLoanDataFromJson(Map<String, dynamic> json) {
  return CurrentLoanData(
    loanHistory: json['loanHistory'] as List,
    currentLoan: json['currentLoan'] as List,
    recentPayment: json['recent_payment'] as List,
  );
}

Map<String, dynamic> _$CurrentLoanDataToJson(CurrentLoanData instance) =>
    <String, dynamic>{
      'loanHistory': instance.loanHistory,
      'currentLoan': instance.currentLoan,
      'recent_payment': instance.recentPayment,
    };
