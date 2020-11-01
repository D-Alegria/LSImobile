import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'accounts_cards_event.dart';
part 'accounts_cards_state.dart';

class AccountsCardsBloc extends Bloc<AccountsCardsEvent, AccountsCardsState> {
  AccountsCardsBloc() : super(AccountsCardsInitial());

  @override
  Stream<AccountsCardsState> mapEventToState(
    AccountsCardsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
