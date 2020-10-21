import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:provider/provider.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart' as lsi_r;
import 'package:lsi_mobile/ui/shared/themes.dart';
import 'package:lsi_mobile/ui/shared/unknown_route_view.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';
import 'package:lsi_mobile/core/providers/providers.dart';

class LSIAppDev extends StatelessWidget {
  const LSIAppDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                getIt<AuthenticationBloc>()..add(CheckAuthenticated())),
        BlocProvider(create: (BuildContext context) => OnboardPageCubit()),
      ],
      child: MultiProvider(
        providers: providers,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themes,
          builder: ExtendedNavigator.builder<lsi_r.Router>(
            builder: DevicePreview.appBuilder,
            router: lsi_r.Router(),
            onUnknownRoute: (settings) => unknownRouteView(settings.name),
          ),
        ),
      ),
    );
  }
}
