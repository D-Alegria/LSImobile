import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:lsi_mobile/core/utils/config_reader_util.dart';
import 'package:meta/meta.dart';

part 'add_card_form_cubit.freezed.dart';

part 'add_card_form_state.dart';

@lazySingleton
class AddCardFormCubit extends Cubit<AddCardFormState> {
  final BankRepo _bankRepo;

  AddCardFormCubit(this._bankRepo) : super(AddCardFormState.initial());

  void initCardTransaction() async {
    emit(state.copyWith(
        isSubmitting: true,
        userInfo: "initializing...",
        submitFailureOrSuccess: None()));
    final init = await _bankRepo.initiateCardTransaction(
        ConfigReader.getAppConfig().paystackTestAmount);

    init.fold(
        (l) => emit(state.copyWith(
            submitFailureOrSuccess:
                optionOf(left(SystemGlitch(message: l.message))))),
        (r) => emit(state.copyWith(
            referenceId: r.reference, checkOutUrl: r.authorizationUrl)));

    emit(state.copyWith(
        isSubmitting: false,
        userInfo: "Loading Url...",
        checkOutUrl: "",
        submitFailureOrSuccess: None()));
  }

  Future<void> addCard() async {
    emit(state.copyWith(
        isSubmitting: true,
        userInfo: "adding Card...",
        submitFailureOrSuccess: None()));
    final result = await _bankRepo.addNewCard(state.referenceId);

    result.fold(
        (l) => emit(state.copyWith(
            submitFailureOrSuccess:
                optionOf(left(SystemGlitch(message: l.message))))),
        (r) =>
            emit(state.copyWith(submitFailureOrSuccess: optionOf(right(r)))));

    emit(state.copyWith(
        isSubmitting: false, userInfo: "Done.", checkOutUrl: ""));
  }

  Future<void> reset() async {
    emit(AddCardFormState.initial());
  }
}
