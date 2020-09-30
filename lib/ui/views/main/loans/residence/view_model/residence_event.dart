part of 'residence_bloc.dart';

@freezed
abstract class ResidenceEvent with _$ResidenceEvent {
  const factory ResidenceEvent.submitResidenceForm() = SubmitResidenceForm;
}