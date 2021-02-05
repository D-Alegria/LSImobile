import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onboard_page_state.dart';

class OnboardPageCubit extends Cubit<int> {
  OnboardPageCubit() : super(0);

  void changePage() => emit(state + 1);
}
