part of 'new_investment_cubit.dart';

@freezed
abstract class NewInvestmentState with _$NewInvestmentState {
  const factory NewInvestmentState({
    InvestmentProduct investmentProduct,
    @required double amount,
    @required int duration,
    @required String tenure,
    @required String paystackReference,
    @required String connectedCardId,
    @required String investmentDate,
    @required String maturityDate,
    @required String investmentRate,
    @required String accruedInterest,
    @required String withholdingTax,
    @required String maturityValue,
    @required List<TenorRate> durations,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _NewInvestmentState;

  factory NewInvestmentState.initial() => NewInvestmentState(
        amount: 0,
        duration: 1,
        durations: [],
        isSubmitting: false,
        showErrorMessages: false,
        submitFailureOrSuccess: None(),
        accruedInterest: '',
        investmentDate: '',
        investmentRate: '',
        maturityDate: '',
        maturityValue: '',
        tenure: '',
        withholdingTax: '',
        investmentProduct: InvestmentProduct.initial(),
        paystackReference: '',
        connectedCardId: '',
      );
}
