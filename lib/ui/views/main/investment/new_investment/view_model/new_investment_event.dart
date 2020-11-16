part of 'new_investment_bloc.dart';

@freezed
abstract class NewInvestmentEvent with _$NewInvestmentEvent {
  const factory NewInvestmentEvent.init(InvestmentProduct product) = Init;

  const factory NewInvestmentEvent.proceedToFunding() = ProceedToFunding;

  const factory NewInvestmentEvent.amountChanged(double amount) = AmountChanged;

  const factory NewInvestmentEvent.durationChanged(int duration) =
      DurationChanged;

  const factory NewInvestmentEvent.restart() = Restart;
}
