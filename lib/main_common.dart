import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/ui/lsi_app_dev.dart';
import 'package:lsi_mobile/ui/lsi_app_prod.dart';

import 'core/configs/dependency_injection/injection.dart';
import 'core/configs/logging/catcher.dart';
import 'core/configs/logging/cubit_observer.dart';
import 'core/utils/file_reader_util.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await FileReader.initialize();
  await configureInjection(env);
  Bloc.observer = MainCubitObserver();

  switch (env) {
    case Environment.dev:
      Catcher(
        LSIAppDev(),
        debugConfig: CatcherConfig.debugOptions,
        releaseConfig: CatcherConfig.releaseOptions,
      );
      break;
    case Environment.prod:
      Catcher(
        LSIAppProd(),
        debugConfig: CatcherConfig.debugOptions,
        releaseConfig: CatcherConfig.releaseOptions,
      );
      break;
  }
}
