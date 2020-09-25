// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../ui/views/authentication/login/login_view.dart';
import '../../../ui/views/onboarding/onboarding_view.dart';
import '../../../ui/views/start_up/start_up_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const String loginView = '/login-view';
  static const all = <String>{
    startUpView,
    onBoardingView,
    loginView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.loginView, page: LoginView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartUpView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnBoardingView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushStartUpView() => push<dynamic>(Routes.startUpView);

  Future<dynamic> pushOnBoardingView() => push<dynamic>(Routes.onBoardingView);

  Future<dynamic> pushLoginView() => push<dynamic>(Routes.loginView);
}
