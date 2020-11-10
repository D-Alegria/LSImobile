part of 'recent_transaction_cubit.dart';

@freezed
abstract class RecentTransactionState with _$RecentTransactionState {
  factory RecentTransactionState.initial() = Initial;

  factory RecentTransactionState.loading() = Loading;

  factory RecentTransactionState.loaded({
    @required final List<RecentTransaction> recentTransactions,
  }) = Loaded;

  factory RecentTransactionState.error(String message) = Error;
}
