part of 'add_card_form_cubit.dart';

@freezed
abstract class AddCardFormState with _$AddCardFormState {
  const factory AddCardFormState({
    @required String referenceId,
    @required String checkOutUrl,
    @required String userInfo,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _AddCardFormState;

  factory AddCardFormState.initial() => AddCardFormState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        referenceId: "",
        checkOutUrl: "",
        userInfo: "",
      );
}
