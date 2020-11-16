import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment_duration/investment_duration.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/models/dto/plan/plan.dart';
import 'package:lsi_mobile/core/models/requests/create_investment/create_investment_request.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'new_investment_bloc.freezed.dart';

part 'new_investment_event.dart';

part 'new_investment_state.dart';

@injectable
class NewInvestmentBloc extends Bloc<NewInvestmentEvent, NewInvestmentState> {
  final InvestmentRepo _investmentRepo;

  NewInvestmentBloc(this._investmentRepo) : super(NewInvestmentState.initial());

  @override
  Stream<NewInvestmentState> mapEventToState(NewInvestmentEvent event) async* {
    yield* event.map(
      init: (e) async* {
        yield state.copyWith(
          investmentProduct: e.product,
        );
        yield* updateForm();
      },
      proceedToFunding: (e) async* {
        yield state.copyWith(
            isSubmitting: true, submitFailureOrSuccess: None());

        final result = await _investmentRepo.createInvestment(
          CreateInvestmentRequest(
            plan: Plan(
                duration: state.durations[state.duration].noOfMonth.toString(),
                amount: state.amount.toString(),
                productId: state.investmentProduct.investmentProductId),
          ),
        );

        yield state.copyWith(
            isSubmitting: false, submitFailureOrSuccess: optionOf(result));
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          amount: e.amount,
          submitFailureOrSuccess: None(),
        );
        yield* updateForm();
      },
      durationChanged: (e) async* {
        yield state.copyWith(
          duration: e.duration,
          submitFailureOrSuccess: None(),
        );
        yield* updateForm();
      },
      restart: (e) async* {
        yield NewInvestmentState.initial();
      },
    );
  }

  Stream<NewInvestmentState> updateForm() async* {
    var investmentDate = Jiffy().yMMMd;
    var maturityDate = Jiffy()
      ..add(months: state.durations[state.duration].noOfMonth);
    double totalInterest = state.durations[state.duration].interestRate / 12;
    double accruedInterest = (totalInterest / 100) *
        state.amount *
        state.durations[state.duration].noOfMonth;

    yield state.copyWith(
      investmentDate: investmentDate,
      maturityDate: maturityDate.yMMMd,
      tenure: state.durations[state.duration].noOfMonth.toString(),
      withholdingTax: '0',
      investmentRate: state.durations[state.duration].interestRate.toString(),
      accruedInterest: accruedInterest.moneyFormat,
      maturityValue: (state.amount + accruedInterest).moneyFormat,
    );
  }
}
