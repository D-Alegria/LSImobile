part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @required String fullName,
    @required String phoneNumber,
    @required String emailAddress,
    @required String password,
    @required String verificationCode,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> authFailureOrSuccess,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        fullName: "",
        phoneNumber: "",
        emailAddress: "",
        password: "",
        verificationCode: "",
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccess: None(),
      );
}
