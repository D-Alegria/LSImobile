import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';
import 'package:meta/meta.dart';

part 'make_payment_cubit.freezed.dart';

part 'make_payment_state.dart';

@lazySingleton
class MakePaymentCubit extends Cubit<MakePaymentState> {
  final LoanRepo _loanRepo;

  MakePaymentCubit(this._loanRepo) : super(MakePaymentState.initial());

  void init(String amount, String requestId) {
    emit(state.copyWith(
      amount: amount,
      requestId: requestId,
      submitFailureOrSuccess: None(),
    ));
  }

  void amountChanged(String amount) {
    emit(state.copyWith(
      amount: amount,
      submitFailureOrSuccess: None(),
    ));
  }

  void referenceChanged(String reference) {
    emit(state.copyWith(
      paystackReference: reference,
      submitFailureOrSuccess: None(),
    ));
  }

  Future<void> makePayment() async {
    emit(state.copyWith(isSubmitting: true, submitFailureOrSuccess: None()));

    final result = await _loanRepo.makeLoanPayment(
        state.paystackReference, state.requestId);

    emit(state.copyWith(
        isSubmitting: false, submitFailureOrSuccess: optionOf(result)));
  }

  void reset() {
    emit(MakePaymentState.initial());
  }
}
