import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/requests/rollover_investment/rollover_investment_request.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:meta/meta.dart';

part 'rollover_form_state.dart';
part 'rollover_form_cubit.freezed.dart';

@injectable
class RolloverFormCubit extends Cubit<RolloverFormState> {
  final InvestmentRepo _investmentRepo;

  RolloverFormCubit(this._investmentRepo) : super(RolloverFormState.initial());

  Future<void> rollover({String planId, String duration}) async {
    emit(state.copyWith(isSubmitting: true, submitFailureOrSuccess: None()));

    final result = await _investmentRepo.rollOverInvestment(
      RollOverPayLoad(duration: duration, planId: planId),
    );

    emit(state.copyWith(
        isSubmitting: false, submitFailureOrSuccess: optionOf(result)));
  }
}
