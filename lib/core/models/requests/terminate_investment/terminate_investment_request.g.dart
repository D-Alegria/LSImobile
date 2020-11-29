// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_investment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminateInvestmentRequest _$TerminateInvestmentRequestFromJson(
    Map<String, dynamic> json) {
  return TerminateInvestmentRequest(
    token: json['token'] as String,
    payLoad: json['payLoad'] == null
        ? null
        : TerminatePayLoad.fromJson(json['payLoad'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TerminateInvestmentRequestToJson(
        TerminateInvestmentRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'payLoad': instance.payLoad?.toJson(),
    };

TerminatePayLoad _$TerminatePayLoadFromJson(Map<String, dynamic> json) {
  return TerminatePayLoad(
    amount: json['amount'] as String,
    planId: json['plan_id'] as String,
    withdrawalBankId: json['withdrawal_bank_id'] as String,
  );
}

Map<String, dynamic> _$TerminatePayLoadToJson(TerminatePayLoad instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'withdrawal_bank_id': instance.withdrawalBankId,
      'amount': instance.amount,
    };
