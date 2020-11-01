// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bank _$BankFromJson(Map<String, dynamic> json) {
  return Bank(
    bankId: json['bank_id'] as String,
    bankName: json['bank_name'] as String,
    bankCode: json['bank_code'] as String,
    createdAt: json['created_at'] as String,
    isBank: json['is_bank'] as String,
    bankShort: json['bank_short'] as String,
    ordering: json['ordering'] as String,
    bankImg: json['bank_img'] as String,
    directDebitCode: json['direct_debit_code'] as String,
    paystackBankName: json['paystack_bank_name'] as String,
  );
}

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'bank_id': instance.bankId,
      'bank_name': instance.bankName,
      'bank_code': instance.bankCode,
      'created_at': instance.createdAt,
      'is_bank': instance.isBank,
      'bank_short': instance.bankShort,
      'ordering': instance.ordering,
      'bank_img': instance.bankImg,
      'direct_debit_code': instance.directDebitCode,
      'paystack_bank_name': instance.paystackBankName,
    };
