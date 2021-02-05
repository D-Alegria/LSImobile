part of 'residence_form_cubit.dart';

@freezed
abstract class ResidenceFormState with _$ResidenceFormState {
  const factory ResidenceFormState({
    UserDetailsRequest userDetails,
    @required String typeOfResidence,
    @required String currentAddress,
    @required String state,
    @required String lga,
    @required String stayPeriod,
    @required List<Value> residences,
    @required List<Value> states,
    @required List<Value> lgas,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isEdited,
    @required Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess,
  }) = _ResidenceFormState;

  factory ResidenceFormState.initial() => ResidenceFormState(
        showErrorMessages: false,
        isSubmitting: false,
        submitResidenceFailureOrSuccess: None(),
        stayPeriod: "",
        currentAddress: "",
        lga: "",
        residences: [Value(name: "", id: "")],
        states: [Value(name: "", id: "")],
        lgas: [Value(name: "", id: "")],
        state: "",
        typeOfResidence: "",
        isEdited: false,
      );
}
