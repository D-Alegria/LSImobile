part of 'account_info_bloc.dart';

@freezed
abstract class AccountInfoState with _$AccountInfoState {
  const factory AccountInfoState({
    LoanRequest loanRequest,
    LoanProduct loanProduct,
    @required String bankId,
    @required String bankName,
    @required List<Value> banks,
    @required String accountNumber,
    @required String accountName,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess,
    @required Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess,
  }) = _AccountInfoState;

  factory AccountInfoState.initial() => AccountInfoState(
        showErrorMessages: false,
        isSubmitting: false,
        submitAccountInfoFailureOrSuccess: None(),
        applyForLoanFailureOrSuccess: None(),
        accountNumber: "",
        bankName: "",
        accountName: "",
        banks: [Value(name: "", id: "", bankCode: "")],
        bankId: "",
      );
}
