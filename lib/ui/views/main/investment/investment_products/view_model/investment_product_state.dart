part of 'investment_product_cubit.dart';

@freezed
abstract class InvestmentProductState with _$InvestmentProductState {
  factory InvestmentProductState.initial() = Initial;

  factory InvestmentProductState.loading() = Loading;

  factory InvestmentProductState.loaded({
    @required List<InvestmentProduct> investmentProducts,
    int selected,
  }) = Loaded;

  factory InvestmentProductState.error(String message) = Error;
}