import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/requests/terminate_investment/terminate_investment_request.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'terminate_form_cubit.freezed.dart';

part 'terminate_form_state.dart';

@injectable
class TerminateFormCubit extends Cubit<TerminateFormState> {
  final InvestmentRepo _investmentRepo;

  TerminateFormCubit(this._investmentRepo)
      : super(TerminateFormState.initial());

  Future<void> terminate({String planId, String amount, String bankId}) async {
    emit(state.copyWith(isSubmitting: true, submitFailureOrSuccess: None()));

    final result = await _investmentRepo.terminateInvestment(TerminatePayLoad(
      amount: amount,
      planId: planId,
      withdrawalBankId: bankId,
    ));

    emit(state.copyWith(
        isSubmitting: false, submitFailureOrSuccess: optionOf(result)));
  }
}
