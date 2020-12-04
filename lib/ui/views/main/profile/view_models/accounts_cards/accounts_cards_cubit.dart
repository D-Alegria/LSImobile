import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:meta/meta.dart';

part 'accounts_cards_cubit.freezed.dart';

part 'accounts_cards_state.dart';

@lazySingleton
class AccountsCardsCubit extends Cubit<AccountsCardsState> {
  final BankRepo _bankRepo;

  AccountsCardsCubit(this._bankRepo) : super(AccountsCardsState.initial());

  Future<void> getBanks() async {
    emit(state.copyWith(
      isLoading: true,
      failureOrSuccess: None(),
    ));

    try {
      final response = await _bankRepo.bankAccounts;

      response.fold(
        (failure) =>
            emit(state.copyWith(failureOrSuccess: optionOf(left(failure)))),
        (accounts) => emit(state.copyWith(accounts: accounts)),
      );
      emit(state.copyWith(
        isLoading: false,
        failureOrSuccess: None(),
      ));
    } on Error catch (e) {
      print(e);
      emit(state.copyWith(
          failureOrSuccess:
              optionOf(left(SystemGlitch(message: "Error Occurred")))));
    }
  }

  Future<void> getCards() async {
    emit(state.copyWith(
      isLoading: true,
      failureOrSuccess: None(),
    ));

    try {
      final response = await _bankRepo.usersCards;

      response.fold(
        (failure) =>
            emit(state.copyWith(failureOrSuccess: optionOf(left(failure)))),
        (cards) => emit(state.copyWith(cards: cards)),
      );
      emit(state.copyWith(
        isLoading: false,
        failureOrSuccess: None(),
      ));
    } on Error catch (e) {
      print(e);
      emit(state.copyWith(
          failureOrSuccess:
              optionOf(left(SystemGlitch(message: "Error Occurred")))));
    }
  }
}
