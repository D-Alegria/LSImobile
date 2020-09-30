part of 'edu_and_employ_bloc.dart';

@freezed
abstract class EduAndEmployEvent with _$EduAndEmployEvent {
  const factory EduAndEmployEvent.submitEduAndEmploy() = SubmitEduAndEmploy;
}