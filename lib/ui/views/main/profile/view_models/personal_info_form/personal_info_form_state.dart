part of 'personal_info_form_cubit.dart';

@freezed
abstract class PersonalInfoFormState with _$PersonalInfoFormState {
  const factory PersonalInfoFormState({
    UserDetailsRequest userDetails,
    @required String fullName,
    @required String gender,
    @required String maritalStatus,
    @required String emailAddress,
    @required String phoneNumber,
    @required String dateOfBirth,
    @required List<Value> genders,
    @required List<Value> maritalStatuses,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isEdited,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _PersonalInfoFormState;

  factory PersonalInfoFormState.initial() => PersonalInfoFormState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        dateOfBirth: "",
        fullName: "",
        maritalStatus: "",
        gender: "",
        genders: [Value(name: "", id: "")],
        emailAddress: "",
        phoneNumber: "",
        maritalStatuses: [Value(name: "", id: "")],
        isEdited: false,
      );
}
