part of 'emergency_contact_bloc.dart';

@freezed
abstract class EmergencyContactEvent with _$EmergencyContactEvent {
  const factory EmergencyContactEvent.submitEmergencyContactForm() = SubmitEmergencyContactForm;
}