import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'investment_product_cubit.freezed.dart';

part 'investment_product_state.dart';

@lazySingleton
class InvestmentProductCubit extends Cubit<InvestmentProductState> {
  final InvestmentRepo _investmentRepo;

  InvestmentProductCubit(this._investmentRepo) : super(Initial());

  Future<void> getInvestmentProducts() async {
    emit(Loading());

    var result = await _investmentRepo.investmentProducts;
    result.fold(
      (l) => emit(Error(l.message)),
      (r) => emit(Loaded(investmentProducts: r)),
    );
  }
}
