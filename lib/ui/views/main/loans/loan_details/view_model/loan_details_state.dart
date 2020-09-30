part of 'loan_details_bloc.dart';

@freezed
abstract class LoanDetailsState with _$LoanDetailsState {
  const factory LoanDetailsState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ValueFailure, Unit>> submitLoanDetailsFailureOrSuccess,
  }) = _LoanDetailsState;

  factory LoanDetailsState.initial() => LoanDetailsState(
        showErrorMessages: false,
        isSubmitting: false,
        submitLoanDetailsFailureOrSuccess: None(),
      );
}
