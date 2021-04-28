part of 'loan_details_cubit.dart';

@freezed
abstract class LoanDetailsState with _$LoanDetailsState {
  const factory LoanDetailsState({
    UserDetailsRequest data,
    LoanRequest loanRequest,
    @required double amount,
    @required int time,
    @required String reason,
    @required List<Value> reasons,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitLoanDetailsFailureOrSuccess,
  }) = _LoanDetailsState;

  factory LoanDetailsState.initial() => LoanDetailsState(
        showErrorMessages: false,
        isSubmitting: false,
        submitLoanDetailsFailureOrSuccess: None(),
        reason: "",
        amount: 0,
        time: 1,
        reasons: [Value(name: "", id: "")],
      );
}
