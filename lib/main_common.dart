import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/ui/lsi_app_dev.dart';
import 'package:lsi_mobile/ui/lsi_app_prod.dart';

import 'core/configs/dependency_injection/injection.dart';
import 'core/configs/logging/cubit_observer.dart';
import 'core/utils/config_reader_util.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  await configureInjection(env);
  Bloc.observer = MainCubitObserver();

  switch (env) {
    case Environment.dev:
      runApp(DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => LSIAppDev(),
      ));
      break;
    case Environment.prod:
      runApp(LSIAppProd());
      break;
  }
}
