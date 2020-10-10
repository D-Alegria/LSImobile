import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/unknown_route_view.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';

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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.of(context).locale,
        builder: ExtendedNavigator.builder<Router>(
          builder: DevicePreview.appBuilder,
          router: Router(),
          onUnknownRoute: (settings) => unknownRouteView(settings.name),
        ),
      ),
    );
  }
}
