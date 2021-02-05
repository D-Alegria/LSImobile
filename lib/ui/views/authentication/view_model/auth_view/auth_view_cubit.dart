import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_view_cubit.freezed.dart';

part 'auth_view_state.dart';

class AuthViewCubit extends Cubit<AuthViewState> {
  AuthViewCubit() : super(AuthViewState.showLoginView(true));

  void toggleAuthView() {
    emit(ShowLoginView(!state.showLogin));
  }
}
