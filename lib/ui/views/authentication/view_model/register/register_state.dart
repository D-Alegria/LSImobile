part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @required String firstName,
    @required String lastName,
    @required String phoneNumber,
    @required String emailAddress,
    @required String password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthGlitch, Unit>> registerFailureOrSuccess,
    @required Option<Either<AuthGlitch, Unit>> verifyFailureOrSuccess,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        firstName: "",
        lastName: "",
        phoneNumber: "",
        emailAddress: "",
        password: "",
        showErrorMessages: false,
        isSubmitting: false,
        registerFailureOrSuccess: None(),
        verifyFailureOrSuccess: None(),
      );
}
