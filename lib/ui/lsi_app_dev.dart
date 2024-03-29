import 'package:auto_route/auto_route.dart';
import 'package:catcher/catcher.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart' as lsi_r;
import 'package:lsi_mobile/core/providers/providers.dart';
import 'package:lsi_mobile/ui/shared/themes.dart';
import 'package:lsi_mobile/ui/shared/unknown_route_view.dart';
import 'package:provider/provider.dart';

import 'shared/app_cycle.dart';

class LSIAppDev extends StatelessWidget {
  const LSIAppDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MultiBlocProvider(
        providers: blocs(context),
        child: MultiProvider(
          providers: providers,
          child: AppCycle(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: themes,
              builder: ExtendedNavigator.builder<lsi_r.Router>(
                navigatorKey: Catcher.navigatorKey,
                builder: DevicePreview.appBuilder,
                router: lsi_r.Router(),
                onUnknownRoute: (settings) => unknownRouteView(settings.name),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
