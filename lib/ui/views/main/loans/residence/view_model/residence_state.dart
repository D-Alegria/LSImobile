part of 'residence_bloc.dart';

@freezed
abstract class ResidenceState with _$ResidenceState {
  const factory ResidenceState({
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
    @required Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess,
  }) = _ResidenceState;

  factory ResidenceState.initial() => ResidenceState(
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
      );
}
