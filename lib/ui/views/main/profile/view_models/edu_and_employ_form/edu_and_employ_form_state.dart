part of 'edu_and_employ_form_cubit.dart';

@freezed
abstract class EduAndEmployFormState with _$EduAndEmployFormState {
  const factory EduAndEmployFormState({
    UserDetailsRequest userDetails,
    @required String levelOfEducation,
    @required String employmentStatus,
    @required String workSector,
    @required String employerName,
    @required String startDate,
    @required String monthlyIncome,
    @required List<Value> levelsOfEducation,
    @required List<Value> employmentStatuses,
    @required List<Value> workSectors,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isEdited,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _EduAndEmployFormState;

  factory EduAndEmployFormState.initial() => EduAndEmployFormState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        startDate: "",
        employerName: "",
        employmentStatus: "0",
        levelOfEducation: "0",
        monthlyIncome: "",
        workSector: "0",
        employmentStatuses: [Value(id: '0', name: '')],
        levelsOfEducation: [Value(id: '0', name: '')],
        workSectors: [Value(id: '0', name: '')],
        isEdited: false,
      );
}
