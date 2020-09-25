import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubitObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print("General Matcher: $change");
    super.onChange(cubit, change);
  }
}
