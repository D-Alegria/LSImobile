part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  factory UserProfileState.initial() = Initial;

  factory UserProfileState.loading() = Loading;

  factory UserProfileState.loaded({
    @required final UserDetailsData userData,
    @required final String fullName,
    @required final String investmentBalance,
    @required final String profilePicture,
  }) = Loaded;

  factory UserProfileState.error(String message) = Error;
}
