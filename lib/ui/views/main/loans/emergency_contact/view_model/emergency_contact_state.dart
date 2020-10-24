part of 'emergency_contact_bloc.dart';

@freezed
abstract class EmergencyContactState with _$EmergencyContactState {
  const factory EmergencyContactState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess,
  }) = _EmergencyContactState;

  factory EmergencyContactState.initial() => EmergencyContactState(
    showErrorMessages: false,
    isSubmitting: false,
    submitFailureOrSuccess: None(),
  );
}