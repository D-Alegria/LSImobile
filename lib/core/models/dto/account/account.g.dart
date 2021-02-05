// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    accountNumber: json['account_number'] as String,
    accountName: json['account_name'] as String,
    accountId: json['account_id'] as String,
    bankId: json['bank_id'] as String,
    bankName: json['bank_name'] as String,
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'bank_id': instance.bankId,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'account_id': instance.accountId,
      'bank_name': instance.bankName,
    };
