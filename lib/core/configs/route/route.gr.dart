// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../ui/views/authentication/verification/verification_view.dart';
import '../../../ui/views/authentication/widgets/auth_wrapper.dart';
import '../../../ui/views/main/main/main_view.dart';
import '../../../ui/views/onboarding/onboarding_view.dart';
import '../../../ui/views/start_up/start_up_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const String authWrapper = '/auth-wrapper';
  static const String verificationView = '/verification-view';
  static const String mainView = '/main-view';
  static const all = <String>{
    startUpView,
    onBoardingView,
    authWrapper,
    verificationView,
    mainView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.authWrapper, page: AuthWrapper),
    RouteDef(Routes.verificationView, page: VerificationView),
    RouteDef(Routes.mainView, page: MainView),
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
    AuthWrapper: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AuthWrapper(),
        settings: data,
      );
    },
    VerificationView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => VerificationView(),
        settings: data,
      );
    },
    MainView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MainView(),
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

  Future<dynamic> pushAuthWrapper() => push<dynamic>(Routes.authWrapper);

  Future<dynamic> pushVerificationView() =>
      push<dynamic>(Routes.verificationView);

  Future<dynamic> pushMainView() => push<dynamic>(Routes.mainView);
}
