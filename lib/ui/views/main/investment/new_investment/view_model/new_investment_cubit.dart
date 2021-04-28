import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/models/dto/paystack/paystack.dart';
import 'package:lsi_mobile/core/models/dto/plan/plan.dart';
import 'package:lsi_mobile/core/models/dto/tenor_rate/tenor_rate.dart';
import 'package:lsi_mobile/core/models/requests/create_investment/create_investment_request.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'new_investment_cubit.freezed.dart';

part 'new_investment_state.dart';

@injectable
class NewInvestmentCubit extends Cubit<NewInvestmentState> {
  final InvestmentRepo _investmentRepo;

  NewInvestmentCubit(this._investmentRepo)
      : super(NewInvestmentState.initial());

  void init(InvestmentProduct product) {
    emit(state.copyWith(
      investmentProduct: product,
      submitFailureOrSuccess: None(),
      durations: product.tenorRate,
    ));
    emit(updateForm());
  }

  Future<void> completeInvestment() async {
    emit(state.copyWith(isSubmitting: true, submitFailureOrSuccess: None()));

    final result = await _investmentRepo.createInvestment(
      CreateInvestmentRequest(
        plan: Plan(
          duration: state.durations[state.duration].duration.toString(),
          amount: state.amount.toString(),
          productId: state.investmentProduct.investmentProductId,
        ),
        paystack: state.paystackReference.isEmpty
            ? null
            : Paystack(reference: state.paystackReference),
        card: state.connectedCardId.isEmpty
            ? null
            : Card(connectedCardId: state.connectedCardId),
      ),
    );

    emit(state.copyWith(
        isSubmitting: false, submitFailureOrSuccess: optionOf(result)));
  }

  void amountChanged(double amount) {
    emit(state.copyWith(
      amount: amount,
      submitFailureOrSuccess: None(),
    ));
    emit(updateForm());
  }

  void durationChanged(int duration) {
    emit(state.copyWith(
      duration: duration,
      submitFailureOrSuccess: None(),
    ));
    emit(updateForm());
  }

  void referenceChanged(String reference) {
    emit(state.copyWith(
      paystackReference: reference,
      submitFailureOrSuccess: None(),
    ));
  }

  void cardChanged(String cardId) {
    emit(state.copyWith(
      connectedCardId: cardId,
      submitFailureOrSuccess: None(),
    ));
  }

  void reset() {
    emit(NewInvestmentState.initial());
  }

  NewInvestmentState updateForm() {
    var investmentDate = Jiffy().yMMMd;
    var maturityDate = Jiffy()
      ..add(months: state.durations[state.duration].duration);
    double totalInterest = state.durations[state.duration].rate/ 12;
    double accruedInterest = (totalInterest / 100) *
        state.amount *
        state.durations[state.duration].duration;

    return state.copyWith(
      investmentDate: investmentDate,
      maturityDate: maturityDate.yMMMd,
      tenure: state.durations[state.duration].duration.toString(),
      withholdingTax: '0',
      investmentRate: state.durations[state.duration].rate.toString(),
      accruedInterest: accruedInterest.moneyFormat(2),
      maturityValue: (state.amount + accruedInterest).moneyFormat(2),
    );
  }
}
