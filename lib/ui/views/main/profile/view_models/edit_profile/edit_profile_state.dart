part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    UserDetailsRequest userDetails,
    @required List<Value> genders,
    @required List<Value> levelsOfEducation,
    @required List<Value> employmentStatuses,
    @required List<Value> workSectors,
    @required String firstName,
    @required String lastName,
    @required String gender,
    @required String emailAddress,
    @required String phoneNumber,
    @required String dateOfBirth,
    @required String levelOfEducation,
    @required String employmentStatus,
    @required String workSector,
    @required String employerName,
    @required String startDate,
    @required String monthlyIncome,
    @required bool showErrorMessages,
    @required bool isEdited,
    @required bool isSaved,
    @required bool isLoading,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        userDetails: UserDetailsRequest.initial(),
        showErrorMessages: false,
        isEdited: false,
        isSaved: false,
        isLoading: false,
        submitFailureOrSuccess: None(),
        dateOfBirth: "",
        phoneNumber: "",
        emailAddress: "",
        firstName: "",
        gender: "loading",
        lastName: "",
        employerName: "",
        employmentStatus: "loading",
        levelOfEducation: "loading",
        startDate: "",
        monthlyIncome: "",
        workSector: "loading",
        employmentStatuses: [Value(id: '0', name: 'loading')],
        levelsOfEducation: [Value(id: '0', name: 'loading')],
        workSectors: [Value(id: '0', name: 'loading')],
        genders: [Value(id: '0', name: 'loading')],
      );
}
