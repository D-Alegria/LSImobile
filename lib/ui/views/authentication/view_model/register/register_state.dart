part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> registerFailureOrSuccess,
    @required Option<Either<ValueFailure, Unit>> verifyFailureOrSuccess,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        showErrorMessages: false,
        isSubmitting: false,
        registerFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      );
}
