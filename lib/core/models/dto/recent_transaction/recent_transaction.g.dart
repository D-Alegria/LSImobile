// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentTransaction _$RecentTransactionFromJson(Map<String, dynamic> json) {
  return RecentTransaction(
    transType: json['TRANS_TYPE'] as String,
    transactionCode: json['TRANSACTION_CODE'] as String,
    transDate: json['TRANS_DATE'] as String,
    transAmount: json['TRANS_AMOUNT'] as String,
    narrationCustomer: json['NARRATION_CUSTOMER'] as String,
  );
}

Map<String, dynamic> _$RecentTransactionToJson(RecentTransaction instance) =>
    <String, dynamic>{
      'TRANS_TYPE': instance.transType,
      'TRANSACTION_CODE': instance.transactionCode,
      'TRANS_DATE': instance.transDate,
      'TRANS_AMOUNT': instance.transAmount,
      'NARRATION_CUSTOMER': instance.narrationCustomer,
    };
