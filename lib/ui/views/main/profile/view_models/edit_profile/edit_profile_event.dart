part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.init(UserDetailsRequest userDetails) = Init;

  const factory EditProfileEvent.submitEditProfileForm() =
  SubmitEditProfileForm;

  const factory EditProfileEvent.submitEduAndEmpForm() =
  SubmitEduAndEmpForm;

  const factory EditProfileEvent.emailChanged(String email) = EmailChanged;

  const factory EditProfileEvent.firstNameChanged(String firstName) =
  FirstNameChanged;

  const factory EditProfileEvent.lastNameChanged(String lastName) =
  LastNameChanged;

  const factory EditProfileEvent.phoneNumberChanged(String phoneNumber) =
  PhoneNumberChanged;

  const factory EditProfileEvent.genderChanged(String gender) = GenderChanged;

  const factory EditProfileEvent.dateOfBirthChanged(String dateOfBirth) =
  DateOfBirthChanged;

  const factory EditProfileEvent.levelOfEducationChanged(
      String levelOfEducation) =
  LevelOfEducationChanged;

  const factory EditProfileEvent.employmentStatusChanged(
      String employmentStatus) =
  EmploymentStatusChanged;

  const factory EditProfileEvent.workSectorChanged(String workSector) =
  WorkSectorChanged;

  const factory EditProfileEvent.employerNameChanged(String employerName) =
  EmployerNameChanged;

  const factory EditProfileEvent.startDateChanged(String startDate) =
  StartDateChanged;

  const factory EditProfileEvent.monthlyIncomeChanged(String monthlyIncome) =
  MonthlyIncomeChanged;
}
