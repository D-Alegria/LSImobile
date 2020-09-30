part of 'personal_info_bloc.dart';

@freezed
abstract class PersonalInfoState with _$PersonalInfoState {
  const factory PersonalInfoState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess,
  }) = _PersonalInfoState;

  factory PersonalInfoState.initial() => PersonalInfoState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
      );
}
