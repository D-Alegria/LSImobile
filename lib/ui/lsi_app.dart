import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/exception/unknown_route_view.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';

class LSIApp extends StatelessWidget {
  const LSIApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                AuthenticationBloc()..add(CheckAuthenticated())),
        BlocProvider(create: (BuildContext context) => OnboardPageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator.builder<Router>(
          router: Router(),
          onUnknownRoute: (settings) => unknownRouteView(settings.name),
        ),
      ),
    );
  }
}
