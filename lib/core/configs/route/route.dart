import 'package:auto_route/auto_route_annotations.dart';
import 'package:lsi_mobile/ui/views/authentication/verification/verification_view.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_wrapper.dart';
import 'package:lsi_mobile/ui/views/main/main/main_view.dart';
import 'package:lsi_mobile/ui/views/onboarding/onboarding_view.dart';
import 'package:lsi_mobile/ui/views/start_up/start_up_view.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartUpView, initial: true),
    AdaptiveRoute(page: OnBoardingView),
    AdaptiveRoute(page: AuthWrapper),
    AdaptiveRoute(page: VerificationView),
    AdaptiveRoute(page: MainView),
  ],
)
class $Router {}
