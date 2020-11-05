part of 'emergency_contact_bloc.dart';

@freezed
abstract class EmergencyContactEvent with _$EmergencyContactEvent {
  const factory EmergencyContactEvent.init(UserDetailsRequest data) = Init;

  const factory EmergencyContactEvent.firstNameChanged(String firstName) =
      FirstNameChanged;

  const factory EmergencyContactEvent.lastNameChanged(String lastName) =
      LastNameChanged;

  const factory EmergencyContactEvent.emailChanged(String email) = EmailChanged;

  const factory EmergencyContactEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;

  const factory EmergencyContactEvent.relationShipChanged(String relationShip) =
      RelationShipChanged;

  const factory EmergencyContactEvent.submitEmergencyContactForm() =
      SubmitEmergencyContactForm;
}
