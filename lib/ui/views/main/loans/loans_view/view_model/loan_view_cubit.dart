import 'package:bloc/bloc.dart';

class LoanViewCubit extends Cubit<bool> {
  LoanViewCubit() : super(true);

  void checkActiveLoans() {
    emit(!state);
  }
}
