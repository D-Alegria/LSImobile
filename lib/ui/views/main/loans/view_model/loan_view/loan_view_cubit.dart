import 'package:bloc/bloc.dart';

class LoanViewCubit extends Cubit<bool> {
  LoanViewCubit() : super(false);

  void changeView() {
    emit(!state);
  }
}
