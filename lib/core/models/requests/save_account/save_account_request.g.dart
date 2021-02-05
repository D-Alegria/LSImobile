// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveAccountRequest _$SaveAccountRequestFromJson(Map<String, dynamic> json) {
  return SaveAccountRequest(
    accountNumber: json['account_number'] as String,
    bankId: json['bank_id'] as String,
    accountName: json['account_name'] as String,
    token: json['token'],
  );
}

Map<String, dynamic> _$SaveAccountRequestToJson(SaveAccountRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'account_number': instance.accountNumber,
      'bank_id': instance.bankId,
      'account_name': instance.accountName,
    };
