// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../ui/views/authentication/verification/verification_view.dart';
import '../../../ui/views/authentication/widgets/auth_wrapper.dart';
import '../../../ui/views/main/loans/account_info/account_info_view.dart';
import '../../../ui/views/main/loans/edu_and_employ/edu_and_employ_view.dart';
import '../../../ui/views/main/loans/loan_details/loan_details_view.dart';
import '../../../ui/views/main/loans/loan_product/loan_product_view.dart';
import '../../../ui/views/main/loans/no_loan_view/no_loan_view.dart';
import '../../../ui/views/main/loans/personal_info/personal_info_form_view.dart';
import '../../../ui/views/main/loans/provide_bvn/provide_bvn_view.dart';
import '../../../ui/views/main/loans/residence/residence_form_view.dart';
import '../../../ui/views/main/main_view.dart';
import '../../../ui/views/onboarding/onboarding_view.dart';
import '../../../ui/views/start_up/start_up_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const String authWrapper = '/auth-wrapper';
  static const String verificationView = '/verification-view';
  static const String mainView = '/main-view';
  static const String noLoanView = '/no-loan-view';
  static const String loanProductView = '/loan-product-view';
  static const String provideBVNView = '/provide-bv-nView';
  static const String personalInfoFormView = '/personal-info-form-view';
  static const String eduAndEmployFormView = '/edu-and-employ-form-view';
  static const String residenceFormView = '/residence-form-view';
  static const String loanDetailsView = '/loan-details-view';
  static const String accountInfoView = '/account-info-view';
  static const all = <String>{
    startUpView,
    onBoardingView,
    authWrapper,
    verificationView,
    mainView,
    noLoanView,
    loanProductView,
    provideBVNView,
    personalInfoFormView,
    eduAndEmployFormView,
    residenceFormView,
    loanDetailsView,
    accountInfoView,
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
    RouteDef(Routes.noLoanView, page: NoLoanView),
    RouteDef(Routes.loanProductView, page: LoanProductView),
    RouteDef(Routes.provideBVNView, page: ProvideBVNView),
    RouteDef(Routes.personalInfoFormView, page: PersonalInfoFormView),
    RouteDef(Routes.eduAndEmployFormView, page: EduAndEmployFormView),
    RouteDef(Routes.residenceFormView, page: ResidenceFormView),
    RouteDef(Routes.loanDetailsView, page: LoanDetailsView),
    RouteDef(Routes.accountInfoView, page: AccountInfoView),
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
    NoLoanView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const NoLoanView(),
        settings: data,
      );
    },
    LoanProductView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoanProductView(),
        settings: data,
      );
    },
    ProvideBVNView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProvideBVNView(),
        settings: data,
      );
    },
    PersonalInfoFormView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PersonalInfoFormView(),
        settings: data,
      );
    },
    EduAndEmployFormView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EduAndEmployFormView(),
        settings: data,
      );
    },
    ResidenceFormView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ResidenceFormView(),
        settings: data,
      );
    },
    LoanDetailsView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoanDetailsView(),
        settings: data,
      );
    },
    AccountInfoView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountInfoView(),
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

  Future<dynamic> pushNoLoanView() => push<dynamic>(Routes.noLoanView);

  Future<dynamic> pushLoanProductView() =>
      push<dynamic>(Routes.loanProductView);

  Future<dynamic> pushProvideBVNView() => push<dynamic>(Routes.provideBVNView);

  Future<dynamic> pushPersonalInfoFormView() =>
      push<dynamic>(Routes.personalInfoFormView);

  Future<dynamic> pushEduAndEmployFormView() =>
      push<dynamic>(Routes.eduAndEmployFormView);

  Future<dynamic> pushResidenceFormView() =>
      push<dynamic>(Routes.residenceFormView);

  Future<dynamic> pushLoanDetailsView() =>
      push<dynamic>(Routes.loanDetailsView);

  Future<dynamic> pushAccountInfoView() =>
      push<dynamic>(Routes.accountInfoView);
}
