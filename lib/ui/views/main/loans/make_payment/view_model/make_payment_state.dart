part of 'make_payment_cubit.dart';

@freezed
abstract class MakePaymentState with _$MakePaymentState {
  const factory MakePaymentState({
    @required String amount,
    @required String paystackReference,
    @required String requestId,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _MakePaymentState;

  factory MakePaymentState.initial() => MakePaymentState(
    isSubmitting: false,
    showErrorMessages: false,
    submitFailureOrSuccess: None(),
    paystackReference: '',
    requestId: '',
    amount: '',
  );
}