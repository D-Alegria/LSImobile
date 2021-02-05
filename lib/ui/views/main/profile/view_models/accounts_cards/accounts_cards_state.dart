part of 'accounts_cards_cubit.dart';

@freezed
abstract class AccountsCardsState with _$AccountsCardsState {
  const factory AccountsCardsState({
    @required List<Account> accounts,
    @required List<Card> cards,
    @required bool isLoading,
    @required Option<Either<Glitch, Unit>> failureOrSuccess,
  }) = _AccountsCardsState;

  factory AccountsCardsState.initial() => AccountsCardsState(
        isLoading: false,
        accounts: [],
        cards: [],
        failureOrSuccess: None(),
      );
}
