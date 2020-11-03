part of 'main_view_cubit.dart';

@freezed
abstract class MainViewState with _$MainViewState {
  factory MainViewState(
      {@required PageController pageController,
      @required int currentIndex}) = _MainViewState;

  factory MainViewState.initial(int init) => MainViewState(
        pageController: new PageController(initialPage: init, keepPage: true),
        currentIndex: init,
      );
}
