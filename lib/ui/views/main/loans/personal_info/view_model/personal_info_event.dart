part of 'personal_info_bloc.dart';

@freezed
abstract class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.init(UserDetailsRequest data) = Init;

  const factory PersonalInfoEvent.emailChanged(String email) = EmailChanged;

  const factory PersonalInfoEvent.firstNameChanged(String firstName) =
      FirstNameChanged;

  const factory PersonalInfoEvent.lastNameChanged(String lastName) =
      LastNameChanged;

  const factory PersonalInfoEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;

  const factory PersonalInfoEvent.genderChanged(String gender) = GenderChanged;

  const factory PersonalInfoEvent.dateOfBirthChanged(String dateOfBirth) =
      DateOfBirthChanged;

  const factory PersonalInfoEvent.maritalStatusChanged(String maritalStatus) =
      MaritalStatusChanged;

  const factory PersonalInfoEvent.submitPersonalInfo() = SubmitPersonalInfo;
}
