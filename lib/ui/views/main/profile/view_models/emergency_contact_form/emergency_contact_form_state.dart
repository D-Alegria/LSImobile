part of 'emergency_contact_form_cubit.dart';

@freezed
abstract class EmergencyContactFormState with _$EmergencyContactFormState {
  const factory EmergencyContactFormState({
    UserDetailsRequest userDetails,
    @required String fullName,
    @required String email,
    @required String phone,
    @required String relationShip,
    @required List<Value> relationShips,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isEdited,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _EmergencyContactFormState;

  factory EmergencyContactFormState.initial() => EmergencyContactFormState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        phone: "",
        fullName: "",
        email: "",
        relationShip: "0",
        relationShips: [Value(id: "0", name: "")],
        isEdited: false,
      );
}
