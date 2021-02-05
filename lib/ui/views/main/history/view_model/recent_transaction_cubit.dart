import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'recent_transaction_cubit.freezed.dart';

part 'recent_transaction_state.dart';

@lazySingleton
class RecentTransactionCubit extends Cubit<RecentTransactionState> {
  final UserRepo _userRepo;

  RecentTransactionCubit(this._userRepo) : super(Initial());

  Future<void> getRecentTransactions() async {
    emit(Loading());

    var result = await _userRepo.recentTransactions;

    result.fold(
      (l) => emit(Error(l.message)),
      (r) => emit(Loaded(recentTransactions: r ?? [])),
    );
  }
}
