part of 'account_info_bloc.dart';

@freezed
abstract class AccountInfoEvent with _$AccountInfoEvent {
  const factory AccountInfoEvent.bankNameChanged(String bankName) =
      BankNameChanged;

  const factory AccountInfoEvent.accountNumberChanged(String accountNumber) =
      AccountNumberChanged;

  const factory AccountInfoEvent.submitAccountInfoForm() =
      SubmitAccountInfoForm;

  const factory AccountInfoEvent.applyForLoan() = ApplyForLoan;

  const factory AccountInfoEvent.init(
      {LoanRequest request, LoanProduct loanProduct}) = Init;
}
