import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';

part 'get_recent_transaction_response.g.dart';

@JsonSerializable()
class GetRecentTransactionResponse {
  final bool status;
  @JsonKey(name: "recent_transactions")
  final List<RecentTransaction> recentTransactions;

  GetRecentTransactionResponse({this.status, this.recentTransactions});

  factory GetRecentTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRecentTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetRecentTransactionResponseToJson(this);
}
