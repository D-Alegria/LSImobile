import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'investment_view_state.dart';
part 'investment_view_cubit.freezed.dart';

@lazySingleton
class InvestmentViewCubit extends Cubit<InvestmentViewState> {
  final InvestmentRepo _investmentRepo;

  InvestmentViewCubit(this._investmentRepo) : super(Initial());

  Future<void> checkForInvestments() async {
    emit(Loading());

    var result = await _investmentRepo.investments;

    result.fold(
          (l) => emit(Error(l.message)),
          (r) => emit(
        Loaded(
          isInvestmentAvailable: r.isNotEmpty,
          investments: r,
        ),
      ),
    );
  }
}
