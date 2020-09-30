part of 'residence_bloc.dart';


@freezed
abstract class ResidenceState with _$ResidenceState {
  const factory ResidenceState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> submitResidenceFailureOrSuccess,
  }) = _ResidenceState;

  factory ResidenceState.initial() => ResidenceState(
    showErrorMessages: false,
    isSubmitting: false,
    submitResidenceFailureOrSuccess: None(),
  );
}
