part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.init() = Init;

  const factory EditProfileEvent.submitEditProfileForm() =
      SubmitEditProfileForm;

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
}
