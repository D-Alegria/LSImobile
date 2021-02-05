part of 'user_profile_cubit.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @nullable UserDetailsData userData,
    @required bool isLoading,
    @nullable Glitch glitch,
  }) = _UserProfileState;

  factory UserProfileState.initial() => UserProfileState(
        isLoading: false,
        glitch: null,
      );
}
