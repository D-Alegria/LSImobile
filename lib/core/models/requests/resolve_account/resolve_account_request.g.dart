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
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$ResolveAccountRequestToJson(
        ResolveAccountRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'account_number': instance.accountNumber,
      'bank_code': instance.bankCode,
    };
