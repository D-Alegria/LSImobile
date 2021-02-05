// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_card_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeCardTransactionResponse _$InitializeCardTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return InitializeCardTransactionResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : CardTransactionData.fromJson(json['data'] as Map<String, dynamic>),
    hasOwnGateway: json['has_own_gateway'] as String,
  );
}

Map<String, dynamic> _$InitializeCardTransactionResponseToJson(
        InitializeCardTransactionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'has_own_gateway': instance.hasOwnGateway,
    };

CardTransactionData _$CardTransactionDataFromJson(Map<String, dynamic> json) {
  return CardTransactionData(
    reference: json['reference'] as String,
    accessCode: json['access_code'] as String,
    authorizationUrl: json['authorization_url'] as String,
  );
}

Map<String, dynamic> _$CardTransactionDataToJson(
        CardTransactionData instance) =>
    <String, dynamic>{
      'authorization_url': instance.authorizationUrl,
      'access_code': instance.accessCode,
      'reference': instance.reference,
    };
