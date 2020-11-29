part of 'withdraw_form_cubit.dart';

@freezed
abstract class WithdrawFormState with _$WithdrawFormState {
  const factory WithdrawFormState({
    @required String amount,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _WithdrawFormState;

  factory WithdrawFormState.initial() => WithdrawFormState(
        submitFailureOrSuccess: None(),
        isSubmitting: false,
        amount: '0',
      );
}
