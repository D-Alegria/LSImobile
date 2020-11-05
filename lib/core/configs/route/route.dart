import 'package:auto_route/auto_route_annotations.dart';
import 'package:lsi_mobile/ui/shared/success_view.dart';
import 'package:lsi_mobile/ui/views/authentication/verification/verification_view.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_wrapper.dart';
import 'package:lsi_mobile/ui/views/main/investment/fund_investment/fund_investment_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_plan/investment_plan_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_statement/investment_statement_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/new_investment_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/no_investment/no_investment_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/account_info/account_info_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/edu_and_employ/edu_and_employ_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/emergency_contact/emergency_contact_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/loan_details_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_schedule/loan_schedule_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/make_payment/make_payment_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/no_loan_view/no_loan_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/personal_info/personal_info_form_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/provide_bvn_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/residence/residence_form_view.dart';
import 'package:lsi_mobile/ui/views/main/main_view.dart';
import 'package:lsi_mobile/ui/views/main/profile/accounts_cards/accounts_cards_view.dart';
import 'package:lsi_mobile/ui/views/main/profile/contact_us/contact_us_view.dart';
import 'package:lsi_mobile/ui/views/main/profile/edit_profile/edit_profile_view.dart';
import 'package:lsi_mobile/ui/views/main/profile/faq/faq_view.dart';
import 'package:lsi_mobile/ui/views/main/profile/profile_view.dart';
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
    AdaptiveRoute(page: NoLoanView),
    AdaptiveRoute(page: LoanProductView),
    AdaptiveRoute(page: ProvideBVNView),
    AdaptiveRoute(page: PersonalInfoFormView),
    AdaptiveRoute(page: EmergencyContactFormView),
    AdaptiveRoute(page: EduAndEmployFormView),
    AdaptiveRoute(page: ResidenceFormView),
    AdaptiveRoute(page: LoanDetailsView),
    AdaptiveRoute(page: AccountInfoView),
    AdaptiveRoute(page: MakePaymentView),
    AdaptiveRoute(page: LoanScheduleView),
    AdaptiveRoute(page: NoInvestmentView),
    AdaptiveRoute(page: FundInvestmentView),
    AdaptiveRoute(page: NewInvestmentView),
    AdaptiveRoute(page: InvestmentPlanView),
    AdaptiveRoute(page: InvestmentStatementView),
    AdaptiveRoute(page: ProfileView),
    AdaptiveRoute(page: EditProfileView),
    AdaptiveRoute(page: AccountsCardsView),
    AdaptiveRoute(page: ContactUsView),
    AdaptiveRoute(page: FAQView),
    AdaptiveRoute(page: SuccessView),
  ],
)
class $Router {}
