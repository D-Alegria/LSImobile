part of 'residence_bloc.dart';

@freezed
abstract class ResidenceEvent with _$ResidenceEvent {
  const factory ResidenceEvent.init(UserDetailsRequest data) = Init;

  const factory ResidenceEvent.submitResidenceForm() = SubmitResidenceForm;

  const factory ResidenceEvent.typeOfResidenceChanged(String residence) =
      TypeOfResidenceChanged;

  const factory ResidenceEvent.currentAddressChanged(String address) =
      CurrentAddressChanged;

  const factory ResidenceEvent.stateChanged(String state) = StateChanged;

  const factory ResidenceEvent.lgaChanged(String lga) = LgaChanged;

  const factory ResidenceEvent.stayPeriodChanged(String period) =
      StayPeriodChanged;
}
