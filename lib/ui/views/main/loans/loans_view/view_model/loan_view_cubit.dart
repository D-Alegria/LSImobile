import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';
import 'package:meta/meta.dart';

part 'loan_view_cubit.freezed.dart';

part 'loan_view_state.dart';

@injectable
class LoanViewCubit extends Cubit<LoanViewState> {
  final LoanRepo _loanRepo;

  LoanViewCubit(this._loanRepo) : super(LoanViewState.initial());

  Future<void> checkActiveLoans() async {
    emit(Loading());

    var result = await _loanRepo.currentLoans;

    result.fold(
      (l) => emit(Error(l.message)),
      (r) => emit(
        Loaded(
          isLoanAvailable: r.currentLoan.isNotEmpty,
          currentLoans: r.currentLoan,
          loanHistory: r.loanHistory,
        ),
      ),
    );
  }
}
