import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:meta/meta.dart';

part 'accounts_cards_bloc.freezed.dart';

part 'accounts_cards_event.dart';

part 'accounts_cards_state.dart';

@lazySingleton
class AccountsCardsBloc extends Bloc<AccountsCardsEvent, AccountsCardsState> {
  final BankRepo _bankRepo;

  AccountsCardsBloc(this._bankRepo) : super(AccountsCardsState.initial());

  @override
  Stream<AccountsCardsState> mapEventToState(
    AccountsCardsEvent event,
  ) async* {
    yield* event.map(
      getUserBankDetails: (_) async* {
        yield Loading();
        try {
          final bankResult = await _bankRepo.bankAccounts;
          final cardResult = await _bankRepo.usersCards;
          var accounts;
          var cards;

          yield* bankResult.fold(
            (l) async* {
              print(l.message);
              yield Error(l.message);
            },
            (r) async* {
              accounts = r.data;
            },
          );

          yield* cardResult.fold(
            (l) async* {
              print(l.message);
              yield Error(l.message);
            },
            (r) async* {
              cards = r;
              yield Loaded(
                accounts: accounts,
                cards: cards,
              );
            },
          );
        } on Exception catch (e) {
          print(e);
          yield Error("An error occurred");
        }
      },
    );
  }
}
