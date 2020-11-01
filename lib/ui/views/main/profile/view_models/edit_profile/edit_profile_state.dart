part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    UserDetailsRequest userDetails,
    @required List<Value> genders,
    @required String firstName,
    @required String lastName,
    @required String gender,
    @required String emailAddress,
    @required String phoneNumber,
    @required String dateOfBirth,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isLoading,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        userDetails: UserDetailsRequest.initial(),
        showErrorMessages: false,
        isSubmitting: false,
        isLoading: false,
        submitFailureOrSuccess: None(),
        dateOfBirth: "",
        phoneNumber: "",
        emailAddress: "",
        firstName: "",
        gender: "",
        lastName: "",
        genders: [Value(id: '0',name: 'loading')],
      );
}
