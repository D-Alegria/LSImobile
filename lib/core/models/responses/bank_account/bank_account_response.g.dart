// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccountResponse _$BankAccountResponseFromJson(Map<String, dynamic> json) {
  return BankAccountResponse(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Account.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    banksList: (json['banks_list'] as List)
        ?.map(
            (e) => e == null ? null : Bank.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responseCode: json['response_code'] as String,
  );
}

Map<String, dynamic> _$BankAccountResponseToJson(
        BankAccountResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'banks_list': instance.banksList,
      'response_code': instance.responseCode,
    };
