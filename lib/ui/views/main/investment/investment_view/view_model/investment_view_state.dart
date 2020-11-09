part of 'investment_view_cubit.dart';

@freezed
abstract class InvestmentViewState with _$InvestmentViewState {
  factory InvestmentViewState.initial() = Initial;

  factory InvestmentViewState.loading() = Loading;

  factory InvestmentViewState.loaded({
    @required bool isInvestmentAvailable,
    @required List investments,
  }) = Loaded;

  factory InvestmentViewState.error(String message) = Error;
}
