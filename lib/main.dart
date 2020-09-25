import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/lsi_app.dart';

import 'core/configs/logging/cubit_observer.dart';

void main() {
  Bloc.observer = MainCubitObserver();
  configureInjection(Environment.dev);
  runApp(LSIApp());
}
