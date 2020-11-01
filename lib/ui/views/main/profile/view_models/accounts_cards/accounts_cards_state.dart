part of 'accounts_cards_bloc.dart';

@freezed
abstract class AccountsCardsState with _$AccountsCardsState {
  factory AccountsCardsState.initial() = Initial;

  factory AccountsCardsState.loading() = Loading;

  factory AccountsCardsState.loaded({
    @required final List<Account> accounts,
    @required final List<Card> cards,
  }) = Loaded;

  factory AccountsCardsState.error(String message) = Error;
}
