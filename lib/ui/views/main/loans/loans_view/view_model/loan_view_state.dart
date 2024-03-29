part of 'loan_view_cubit.dart';

@freezed
abstract class LoanViewState with _$LoanViewState {
  factory LoanViewState.initial() = Initial;

  factory LoanViewState.loading() = Loading;

  factory LoanViewState.loaded({
    @required bool isLoanAvailable,
    List<Loan> loanHistory,
    List<Loan> currentLoans,
  }) = Loaded;

  factory LoanViewState.error(String message) = Error;
}
