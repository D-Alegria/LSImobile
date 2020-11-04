import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recent_transaction_state.dart';

class RecentTransactionCubit extends Cubit<RecentTransactionState> {
  RecentTransactionCubit() : super(RecentTransactionInitial());
}
