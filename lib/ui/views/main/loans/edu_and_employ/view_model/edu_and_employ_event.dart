part of 'edu_and_employ_bloc.dart';

@freezed
abstract class EduAndEmployEvent with _$EduAndEmployEvent {
  const factory EduAndEmployEvent.init(UserDetailsRequest data) = Init;

  const factory EduAndEmployEvent.submitEduAndEmploy() = SubmitEduAndEmploy;

  const factory EduAndEmployEvent.levelOfEducationChanged(
      String levelOfEducation) =
  LevelOfEducationChanged;

  const factory EduAndEmployEvent.employmentStatusChanged(
      String employmentStatus) =
  EmploymentStatusChanged;

  const factory EduAndEmployEvent.workSectorChanged(String workSector) =
  WorkSectorChanged;

  const factory EduAndEmployEvent.employerNameChanged(String employerName) =
  EmployerNameChanged;

  const factory EduAndEmployEvent.startDateChanged(String startDate) =
  StartDateChanged;

  const factory EduAndEmployEvent.monthlyIncomeChanged(String monthlyIncome) =
  MonthlyIncomeChanged;
}