import 'package:auto_route/auto_route_annotations.dart';
import 'package:lsi_mobile/ui/views/start_up/start_up_view.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartUpView, initial: true, path: '/')
  ],
)
class $Router {}
