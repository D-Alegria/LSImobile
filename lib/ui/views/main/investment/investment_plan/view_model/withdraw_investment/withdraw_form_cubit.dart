import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/requests/liquidate_investment/liquidate_investment_request.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'withdraw_form_cubit.freezed.dart';

part 'withdraw_form_state.dart';

@injectable
class WithdrawFormCubit extends Cubit<WithdrawFormState> {
  final InvestmentRepo _investmentRepo;

  WithdrawFormCubit(this._investmentRepo) : super(WithdrawFormState.initial());

  Future<void> withDraw({String planId, String bankId}) async {
    emit(state.copyWith(isSubmitting: true, submitFailureOrSuccess: None()));

    final result = await _investmentRepo.liquidateInvestment(LiquidatePayLoad(
      amount: state.amount,
      planId: planId,
      withdrawalBankId: bankId,
    ));

    emit(state.copyWith(
        isSubmitting: false, submitFailureOrSuccess: optionOf(result)));
  }

  void amountChanged(String amount) {
    emit(state.copyWith(
      amount: amount,
      submitFailureOrSuccess: None(),
    ));
  }
}
