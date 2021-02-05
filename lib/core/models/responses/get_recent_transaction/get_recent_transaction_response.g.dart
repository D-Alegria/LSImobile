// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recent_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRecentTransactionResponse _$GetRecentTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return GetRecentTransactionResponse(
    status: json['status'] as bool,
    recentTransactions: (json['recent_transactions'] as List)
        ?.map((e) => e == null
            ? null
            : RecentTransaction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetRecentTransactionResponseToJson(
        GetRecentTransactionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'recent_transactions': instance.recentTransactions,
    };
