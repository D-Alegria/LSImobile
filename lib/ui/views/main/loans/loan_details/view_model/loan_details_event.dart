part of 'loan_details_bloc.dart';

@freezed
abstract class LoanDetailsEvent with _$LoanDetailsEvent {
  const factory LoanDetailsEvent.submitLoanDetailsForm() = SubmitLoanDetailsForm;
}