// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResolveAccountResponse _$ResolveAccountResponseFromJson(
    Map<String, dynamic> json) {
  return ResolveAccountResponse(
    status: json['status'] as String,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : BankData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResolveAccountResponseToJson(
        ResolveAccountResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

BankData _$BankDataFromJson(Map<String, dynamic> json) {
  return BankData(
    accountNumber: json['account_number'] as String,
    accountName: json['account_name'] as String,
    bankId: json['bank_id'] as String,
  );
}

Map<String, dynamic> _$BankDataToJson(BankData instance) => <String, dynamic>{
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'bank_id': instance.bankId,
    };
