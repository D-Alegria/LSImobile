part of 'terminate_form_cubit.dart';

@freezed
abstract class TerminateFormState with _$TerminateFormState {
  const factory TerminateFormState({
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _TerminateFormState;

  factory TerminateFormState.initial() => TerminateFormState(
    submitFailureOrSuccess: None(),
    isSubmitting: false,
  );
}
