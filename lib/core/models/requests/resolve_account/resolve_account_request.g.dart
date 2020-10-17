// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResolveAccountRequest _$ResolveAccountRequestFromJson(
    Map<String, dynamic> json) {
  return ResolveAccountRequest(
    accountNumber: json['account_number'] as String,
    bankCode: json['bank_code'] as String,
  );
}

Map<String, dynamic> _$ResolveAccountRequestToJson(
        ResolveAccountRequest instance) =>
    <String, dynamic>{
      'account_number': instance.accountNumber,
      'bank_code': instance.bankCode,
    };
