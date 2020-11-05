part of 'emergency_contact_bloc.dart';

@freezed
abstract class EmergencyContactState with _$EmergencyContactState {
  const factory EmergencyContactState({
    UserDetailsRequest userDetails,
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String phone,
    @required String relationShip,
    @required List<Value> relationShips,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _EmergencyContactState;

  factory EmergencyContactState.initial() => EmergencyContactState(
      showErrorMessages: false,
      isSubmitting: false,
      submitFailureOrSuccess: None(),
      phone: "",
      firstName: "",
      lastName: "",
      email: "",
      relationShip: "0",
      relationShips: [Value(id: "0", name: "")]);
}
