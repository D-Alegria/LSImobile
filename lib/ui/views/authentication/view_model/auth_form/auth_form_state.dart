part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @required String firstName,
    @required String lastName,
    @required String phoneNumber,
    @required String emailAddress,
    @required String password,
    @required String verificationCode,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthGlitch, Unit>> authFailureOrSuccess,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        firstName: "",
        lastName: "",
        phoneNumber: "",
        emailAddress: "",
        password: "",
        verificationCode: "",
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: None(),
      );
}
