part of 'add_account_form_cubit.dart';

@freezed
abstract class AddAccountFormState with _$AddAccountFormState {
  const factory AddAccountFormState({
    @required String bankName,
    @required List<Value> banks,
    @required String accountNumber,
    @required String accountName,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> verifyAccountInfoFailureOrSuccess,
    @required Option<Either<Glitch, Unit>> addAccountInfoFailureOrSuccess,
  }) = _AddAccountFormState;

  factory AddAccountFormState.initial() => AddAccountFormState(
        showErrorMessages: false,
        isSubmitting: false,
        verifyAccountInfoFailureOrSuccess: None(),
        addAccountInfoFailureOrSuccess: None(),
        accountNumber: "",
        bankName: "",
        accountName: "",
        banks: [Value(name: "", id: "", bankCode: "")],
      );
}
