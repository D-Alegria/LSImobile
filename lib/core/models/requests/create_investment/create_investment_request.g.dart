// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_investment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInvestmentRequest _$CreateInvestmentRequestFromJson(
    Map<String, dynamic> json) {
  return CreateInvestmentRequest(
    plan: json['plan'] == null
        ? null
        : Plan.fromJson(json['plan'] as Map<String, dynamic>),
    card: json['card'] == null
        ? null
        : Card.fromJson(json['card'] as Map<String, dynamic>),
    token: json['token'] as String,
    paystack: json['paystack'] == null
        ? null
        : Paystack.fromJson(json['paystack'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateInvestmentRequestToJson(
        CreateInvestmentRequest instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'card': instance.card,
      'token': instance.token,
      'paystack': instance.paystack,
    };
