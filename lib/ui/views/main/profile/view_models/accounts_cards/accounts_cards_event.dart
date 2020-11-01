part of 'accounts_cards_bloc.dart';

@freezed
abstract class AccountsCardsEvent with _$AccountsCardsEvent {
  const factory AccountsCardsEvent.getUserBankDetails() = GetUserBankDetails;

}
