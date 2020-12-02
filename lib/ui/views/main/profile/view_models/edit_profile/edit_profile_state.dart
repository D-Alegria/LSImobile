part of 'edit_profile_cubit.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    UserDetailsRequest userDetails,
    @required bool isEdited,
    @required bool isSaved,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        userDetails: UserDetailsRequest.initial(),
        isEdited: false,
        isSaved: false,
      );
}
