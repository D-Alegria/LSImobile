import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'investment_view_cubit.freezed.dart';

part 'investment_view_state.dart';

@lazySingleton
class InvestmentViewCubit extends Cubit<InvestmentViewState> {
  final InvestmentRepo _investmentRepo;

  InvestmentViewCubit(this._investmentRepo) : super(Initial());

  Future<void> checkForInvestments() async {
    emit(Loading());

    final result = await _investmentRepo.allInvestments;
    final balance = await _investmentRepo.investmentBalance;

    var investments;

    result.fold((l) => emit(Error(l.message)), (r) => investments = r);

    balance.fold(
      (l) => emit(Error(l.message)),
      (r) => emit(
        Loaded(
          isInvestmentAvailable: investments.isNotEmpty,
          investments: investments,
          investmentBalance: r ?? "",
        ),
      ),
    );
  }
}
