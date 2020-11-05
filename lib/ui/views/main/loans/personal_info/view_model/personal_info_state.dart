part of 'personal_info_bloc.dart';

@freezed
abstract class PersonalInfoState with _$PersonalInfoState {
  const factory PersonalInfoState({
    UserDetailsRequest userDetails,
    @required String firstName,
    @required String lastName,
    @required String gender,
    @required String maritalStatus,
    @required String emailAddress,
    @required String phoneNumber,
    @required String dateOfBirth,
    @required List<Value> genders,
    @required List<Value> maritalStatuses,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _PersonalInfoState;

  factory PersonalInfoState.initial() => PersonalInfoState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        dateOfBirth: "",
        lastName: "",
        firstName: "",
        maritalStatus: "",
        gender: "",
        genders: [Value(name: "", id: "")],
        emailAddress: "",
        phoneNumber: "",
        maritalStatuses: [Value(name: "", id: "")],
      );
}
