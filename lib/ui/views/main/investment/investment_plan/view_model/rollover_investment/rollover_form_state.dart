part of 'rollover_form_cubit.dart';

@freezed
abstract class RolloverFormState with _$RolloverFormState {
  const factory RolloverFormState({
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _RolloverFormState;

  factory RolloverFormState.initial() => RolloverFormState(
    submitFailureOrSuccess: None(),
    isSubmitting: false,
  );
}