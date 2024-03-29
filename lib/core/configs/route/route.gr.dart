// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../ui/shared/success_view.dart';
import '../../../ui/views/authentication/forgot_password/forgot_password_view.dart';
import '../../../ui/views/authentication/verification/verification_view.dart';
import '../../../ui/views/authentication/widgets/auth_wrapper.dart';
import '../../../ui/views/main/investment/fund_investment/fund_investment_view.dart';
import '../../../ui/views/main/investment/investment_plan/investment_plan_view.dart';
import '../../../ui/views/main/investment/investment_products/investment_products_view.dart';
import '../../../ui/views/main/investment/investment_statement/investment_statement_view.dart';
import '../../../ui/views/main/investment/new_investment/new_investment_view.dart';
import '../../../ui/views/main/investment/no_investment/no_investment_view.dart';
import '../../../ui/views/main/loans/account_info/account_info_view.dart';
import '../../../ui/views/main/loans/edu_and_employ/edu_and_employ_view.dart';
import '../../../ui/views/main/loans/emergency_contact/emergency_contact_view.dart';
import '../../../ui/views/main/loans/loan_details/loan_details_view.dart';
import '../../../ui/views/main/loans/loan_product/loan_product_view.dart';
import '../../../ui/views/main/loans/loan_schedule/loan_schedule_view.dart';
import '../../../ui/views/main/loans/make_payment/make_payment_view.dart';
import '../../../ui/views/main/loans/no_loan_view/no_loan_view.dart';
import '../../../ui/views/main/loans/personal_info/personal_info_form_view.dart';
import '../../../ui/views/main/loans/provide_bvn/provide_bvn_view.dart';
import '../../../ui/views/main/loans/residence/residence_form_view.dart';
import '../../../ui/views/main/main_view.dart';
import '../../../ui/views/main/profile/accounts_cards/accounts_cards_view.dart';
import '../../../ui/views/main/profile/contact_us/contact_us_view.dart';
import '../../../ui/views/main/profile/edit_profile/edit_profile_view.dart';
import '../../../ui/views/main/profile/faq/faq_view.dart';
import '../../../ui/views/main/profile/profile_view.dart';
import '../../../ui/views/main/profile/widgets/card_payment_webview.dart';
import '../../../ui/views/onboarding/onboarding_view.dart';
import '../../../ui/views/start_up/start_up_view.dart';
import '../../models/dto/investment/investment.dart';
import '../../models/enums/card_transaction.dart';
import '../../models/responses/user_details/user_data.dart';

class Routes {
  static const String startUpView = '/';
  static const String onBoardingView = '/on-boarding-view';
  static const String authWrapper = '/auth-wrapper';
  static const String verificationView = '/verification-view';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String mainView = '/main-view';
  static const String noLoanView = '/no-loan-view';
  static const String loanProductView = '/loan-product-view';
  static const String provideBVNView = '/provide-bv-nView';
  static const String personalInfoFormView = '/personal-info-form-view';
  static const String emergencyContactFormView = '/emergency-contact-form-view';
  static const String eduAndEmployFormView = '/edu-and-employ-form-view';
  static const String residenceFormView = '/residence-form-view';
  static const String loanDetailsView = '/loan-details-view';
  static const String accountInfoView = '/account-info-view';
  static const String makePaymentView = '/make-payment-view';
  static const String loanScheduleView = '/loan-schedule-view';
  static const String noInvestmentView = '/no-investment-view';
  static const String investmentProductsView = '/investment-products-view';
  static const String fundInvestmentView = '/fund-investment-view';
  static const String newInvestmentView = '/new-investment-view';
  static const String investmentPlanView = '/investment-plan-view';
  static const String investmentStatementView = '/investment-statement-view';
  static const String profileView = '/profile-view';
  static const String editProfileView = '/edit-profile-view';
  static const String accountsCardsView = '/accounts-cards-view';
  static const String contactUsView = '/contact-us-view';
  static const String fAQView = '/f-aq-view';
  static const String cardPaymentWebView = '/card-payment-web-view';
  static const String successView = '/success-view';
  static const all = <String>{
    startUpView,
    onBoardingView,
    authWrapper,
    verificationView,
    forgotPasswordView,
    mainView,
    noLoanView,
    loanProductView,
    provideBVNView,
    personalInfoFormView,
    emergencyContactFormView,
    eduAndEmployFormView,
    residenceFormView,
    loanDetailsView,
    accountInfoView,
    makePaymentView,
    loanScheduleView,
    noInvestmentView,
    investmentProductsView,
    fundInvestmentView,
    newInvestmentView,
    investmentPlanView,
    investmentStatementView,
    profileView,
    editProfileView,
    accountsCardsView,
    contactUsView,
    fAQView,
    cardPaymentWebView,
    successView,
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
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.noLoanView, page: NoLoanView),
    RouteDef(Routes.loanProductView, page: LoanProductView),
    RouteDef(Routes.provideBVNView, page: ProvideBVNView),
    RouteDef(Routes.personalInfoFormView, page: PersonalInfoFormView),
    RouteDef(Routes.emergencyContactFormView, page: EmergencyContactFormView),
    RouteDef(Routes.eduAndEmployFormView, page: EduAndEmployFormView),
    RouteDef(Routes.residenceFormView, page: ResidenceFormView),
    RouteDef(Routes.loanDetailsView, page: LoanDetailsView),
    RouteDef(Routes.accountInfoView, page: AccountInfoView),
    RouteDef(Routes.makePaymentView, page: MakePaymentView),
    RouteDef(Routes.loanScheduleView, page: LoanScheduleView),
    RouteDef(Routes.noInvestmentView, page: NoInvestmentView),
    RouteDef(Routes.investmentProductsView, page: InvestmentProductsView),
    RouteDef(Routes.fundInvestmentView, page: FundInvestmentView),
    RouteDef(Routes.newInvestmentView, page: NewInvestmentView),
    RouteDef(Routes.investmentPlanView, page: InvestmentPlanView),
    RouteDef(Routes.investmentStatementView, page: InvestmentStatementView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.editProfileView, page: EditProfileView),
    RouteDef(Routes.accountsCardsView, page: AccountsCardsView),
    RouteDef(Routes.contactUsView, page: ContactUsView),
    RouteDef(Routes.fAQView, page: FAQView),
    RouteDef(Routes.cardPaymentWebView, page: CardPaymentWebView),
    RouteDef(Routes.successView, page: SuccessView),
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
    ForgotPasswordView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(),
        settings: data,
      );
    },
    MainView: (data) {
      final args = data.getArgs<MainViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MainView(
          key: args.key,
          pageNumber: args.pageNumber,
        ),
        settings: data,
      );
    },
    NoLoanView: (data) {
      final args = data.getArgs<NoLoanViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NoLoanView(
          key: args.key,
          user: args.user,
        ),
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
    EmergencyContactFormView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EmergencyContactFormView(),
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
    MakePaymentView: (data) {
      final args = data.getArgs<MakePaymentViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MakePaymentView(
          key: args.key,
          amount: args.amount,
        ),
        settings: data,
      );
    },
    LoanScheduleView: (data) {
      final args = data.getArgs<LoanScheduleViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoanScheduleView(
          key: args.key,
          requestId: args.requestId,
        ),
        settings: data,
      );
    },
    NoInvestmentView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NoInvestmentView(),
        settings: data,
      );
    },
    InvestmentProductsView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => InvestmentProductsView(),
        settings: data,
      );
    },
    FundInvestmentView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => FundInvestmentView(),
        settings: data,
      );
    },
    NewInvestmentView: (data) {
      final args = data.getArgs<NewInvestmentViewArguments>(
        orElse: () => NewInvestmentViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NewInvestmentView(key: args.key),
        settings: data,
      );
    },
    InvestmentPlanView: (data) {
      final args = data.getArgs<InvestmentPlanViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => InvestmentPlanView(
          key: args.key,
          investment: args.investment,
        ),
        settings: data,
      );
    },
    InvestmentStatementView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => InvestmentStatementView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileView(),
        settings: data,
      );
    },
    EditProfileView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const EditProfileView(),
        settings: data,
      );
    },
    AccountsCardsView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountsCardsView(),
        settings: data,
      );
    },
    ContactUsView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ContactUsView(),
        settings: data,
      );
    },
    FAQView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => FAQView(),
        settings: data,
      );
    },
    CardPaymentWebView: (data) {
      final args = data.getArgs<CardPaymentWebViewArguments>(
        orElse: () => CardPaymentWebViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CardPaymentWebView(
          key: args.key,
          url: args.url,
          transaction: args.transaction,
        ),
        settings: data,
      );
    },
    SuccessView: (data) {
      final args = data.getArgs<SuccessViewArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SuccessView(
          key: args.key,
          message: args.message,
          buttonText: args.buttonText,
          onTap: args.onTap,
        ),
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

  Future<dynamic> pushForgotPasswordView() =>
      push<dynamic>(Routes.forgotPasswordView);

  Future<dynamic> pushMainView({
    Key key,
    @required int pageNumber,
  }) =>
      push<dynamic>(
        Routes.mainView,
        arguments: MainViewArguments(key: key, pageNumber: pageNumber),
      );

  Future<dynamic> pushNoLoanView({
    Key key,
    @required UserData user,
  }) =>
      push<dynamic>(
        Routes.noLoanView,
        arguments: NoLoanViewArguments(key: key, user: user),
      );

  Future<dynamic> pushLoanProductView() =>
      push<dynamic>(Routes.loanProductView);

  Future<dynamic> pushProvideBVNView() => push<dynamic>(Routes.provideBVNView);

  Future<dynamic> pushPersonalInfoFormView() =>
      push<dynamic>(Routes.personalInfoFormView);

  Future<dynamic> pushEmergencyContactFormView() =>
      push<dynamic>(Routes.emergencyContactFormView);

  Future<dynamic> pushEduAndEmployFormView() =>
      push<dynamic>(Routes.eduAndEmployFormView);

  Future<dynamic> pushResidenceFormView() =>
      push<dynamic>(Routes.residenceFormView);

  Future<dynamic> pushLoanDetailsView() =>
      push<dynamic>(Routes.loanDetailsView);

  Future<dynamic> pushAccountInfoView() =>
      push<dynamic>(Routes.accountInfoView);

  Future<dynamic> pushMakePaymentView({
    Key key,
    @required String amount,
  }) =>
      push<dynamic>(
        Routes.makePaymentView,
        arguments: MakePaymentViewArguments(key: key, amount: amount),
      );

  Future<dynamic> pushLoanScheduleView({
    Key key,
    @required String requestId,
  }) =>
      push<dynamic>(
        Routes.loanScheduleView,
        arguments: LoanScheduleViewArguments(key: key, requestId: requestId),
      );

  Future<dynamic> pushNoInvestmentView() =>
      push<dynamic>(Routes.noInvestmentView);

  Future<dynamic> pushInvestmentProductsView() =>
      push<dynamic>(Routes.investmentProductsView);

  Future<dynamic> pushFundInvestmentView() =>
      push<dynamic>(Routes.fundInvestmentView);

  Future<dynamic> pushNewInvestmentView({
    Key key,
  }) =>
      push<dynamic>(
        Routes.newInvestmentView,
        arguments: NewInvestmentViewArguments(key: key),
      );

  Future<dynamic> pushInvestmentPlanView({
    Key key,
    @required Investment investment,
  }) =>
      push<dynamic>(
        Routes.investmentPlanView,
        arguments:
            InvestmentPlanViewArguments(key: key, investment: investment),
      );

  Future<dynamic> pushInvestmentStatementView() =>
      push<dynamic>(Routes.investmentStatementView);

  Future<dynamic> pushProfileView() => push<dynamic>(Routes.profileView);

  Future<dynamic> pushEditProfileView() =>
      push<dynamic>(Routes.editProfileView);

  Future<dynamic> pushAccountsCardsView() =>
      push<dynamic>(Routes.accountsCardsView);

  Future<dynamic> pushContactUsView() => push<dynamic>(Routes.contactUsView);

  Future<dynamic> pushFAQView() => push<dynamic>(Routes.fAQView);

  Future<dynamic> pushCardPaymentWebView({
    Key key,
    String url,
    CardTransaction transaction,
  }) =>
      push<dynamic>(
        Routes.cardPaymentWebView,
        arguments: CardPaymentWebViewArguments(
            key: key, url: url, transaction: transaction),
      );

  Future<dynamic> pushSuccessView({
    Key key,
    @required String message,
    @required String buttonText,
    @required Function onTap,
  }) =>
      push<dynamic>(
        Routes.successView,
        arguments: SuccessViewArguments(
            key: key, message: message, buttonText: buttonText, onTap: onTap),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MainView arguments holder class
class MainViewArguments {
  final Key key;
  final int pageNumber;
  MainViewArguments({this.key, @required this.pageNumber});
}

/// NoLoanView arguments holder class
class NoLoanViewArguments {
  final Key key;
  final UserData user;
  NoLoanViewArguments({this.key, @required this.user});
}

/// MakePaymentView arguments holder class
class MakePaymentViewArguments {
  final Key key;
  final String amount;
  MakePaymentViewArguments({this.key, @required this.amount});
}

/// LoanScheduleView arguments holder class
class LoanScheduleViewArguments {
  final Key key;
  final String requestId;
  LoanScheduleViewArguments({this.key, @required this.requestId});
}

/// NewInvestmentView arguments holder class
class NewInvestmentViewArguments {
  final Key key;
  NewInvestmentViewArguments({this.key});
}

/// InvestmentPlanView arguments holder class
class InvestmentPlanViewArguments {
  final Key key;
  final Investment investment;
  InvestmentPlanViewArguments({this.key, @required this.investment});
}

/// CardPaymentWebView arguments holder class
class CardPaymentWebViewArguments {
  final Key key;
  final String url;
  final CardTransaction transaction;
  CardPaymentWebViewArguments({this.key, this.url, this.transaction});
}

/// SuccessView arguments holder class
class SuccessViewArguments {
  final Key key;
  final String message;
  final String buttonText;
  final Function onTap;
  SuccessViewArguments(
      {this.key,
      @required this.message,
      @required this.buttonText,
      @required this.onTap});
}
