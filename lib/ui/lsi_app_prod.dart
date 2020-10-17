import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart' as lsi_r;
import 'package:lsi_mobile/core/providers/providers.dart';
import 'package:lsi_mobile/ui/shared/unknown_route_view.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';
import 'package:provider/provider.dart';

class LSIAppProd extends StatelessWidget {
  const LSIAppProd({Key key}) : super(key: key);

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
          builder: ExtendedNavigator.builder<lsi_r.Router>(
            router: lsi_r.Router(),
            onUnknownRoute: (settings) => unknownRouteView(settings.name),
          ),
        ),
      ),
    );
  }
}
