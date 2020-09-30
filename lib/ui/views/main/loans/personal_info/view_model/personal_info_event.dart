part of 'personal_info_bloc.dart';


@freezed
abstract class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.submitPersonalInfo() = SubmitPersonalInfo;
}