part of 'edu_and_employ_bloc.dart';

@freezed
abstract class EduAndEmployState with _$EduAndEmployState {
  const factory EduAndEmployState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> submitFailureOrSuccess,
  }) = _EduAndEmployState;

  factory EduAndEmployState.initial() => EduAndEmployState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
      );
}
