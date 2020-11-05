part of 'loan_details_bloc.dart';

@freezed
abstract class LoanDetailsEvent with _$LoanDetailsEvent {
  const factory LoanDetailsEvent.submitLoanDetailsForm() = SubmitLoanDetailsForm;
  const factory LoanDetailsEvent.amountChanged(String amount) = AmountChanged;
  const factory LoanDetailsEvent.timeChanged(String time) = TimeChanged;
  const factory LoanDetailsEvent.reasonChanged(String reason) = ReasonChanged;
  const factory LoanDetailsEvent.init(UserDetailsRequest data) = Init;
}