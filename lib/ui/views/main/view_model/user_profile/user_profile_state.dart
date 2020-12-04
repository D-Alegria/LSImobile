part of 'user_profile_cubit.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  factory UserProfileState.initial() = Initial;

  factory UserProfileState.loading() = Loading;

  factory UserProfileState.loaded({
    @required final UserDetailsData userData,
    @required final String fullName,
    @required final String profilePicture,
  }) = Loaded;

  factory UserProfileState.error(Glitch glitch) = Error;
}
