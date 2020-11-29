// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liquidate_investment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiquidateInvestmentRequest _$LiquidateInvestmentRequestFromJson(
    Map<String, dynamic> json) {
  return LiquidateInvestmentRequest(
    token: json['token'] as String,
    payLoad: json['payLoad'] == null
        ? null
        : LiquidatePayLoad.fromJson(json['payLoad'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LiquidateInvestmentRequestToJson(
        LiquidateInvestmentRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'payLoad': instance.payLoad?.toJson(),
    };

LiquidatePayLoad _$LiquidatePayLoadFromJson(Map<String, dynamic> json) {
  return LiquidatePayLoad(
    amount: json['amount'] as String,
    planId: json['plan_id'] as String,
    withdrawalBankId: json['withdrawal_bank_id'] as String,
  );
}

Map<String, dynamic> _$LiquidatePayLoadToJson(LiquidatePayLoad instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'withdrawal_bank_id': instance.withdrawalBankId,
      'amount': instance.amount,
    };
