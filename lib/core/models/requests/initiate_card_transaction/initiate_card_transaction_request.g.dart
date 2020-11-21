// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_card_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitiateCardTransactionRequest _$InitiateCardTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return InitiateCardTransactionRequest(
    token: json['token'] as String,
    amount: json['amount'] as String,
  );
}

Map<String, dynamic> _$InitiateCardTransactionRequestToJson(
        InitiateCardTransactionRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'amount': instance.amount,
    };
