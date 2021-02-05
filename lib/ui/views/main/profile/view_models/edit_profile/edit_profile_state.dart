part of 'edit_profile_cubit.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({@required TabController tabController}) =
      _EditProfileState;

  factory EditProfileState.initial(TickerProvider vsync) => EditProfileState(
        tabController: new TabController(length: 4, vsync: vsync),
      );
}
