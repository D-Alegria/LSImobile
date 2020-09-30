import 'package:auto_route/auto_route_annotations.dart';
import 'package:lsi_mobile/ui/shared/success_view.dart';
import 'package:lsi_mobile/ui/views/authentication/verification/verification_view.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_wrapper.dart';
import 'package:lsi_mobile/ui/views/main/loans/account_info/account_info_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/edu_and_employ/edu_and_employ_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/loan_details_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/personal_info/personal_info_form_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/provide_bvn_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/residence/residence_form_view.dart';
import 'package:lsi_mobile/ui/views/main/main_view.dart';
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
    AdaptiveRoute(page: LoanProductView),
    AdaptiveRoute(page: ProvideBVNView),
    AdaptiveRoute(page: PersonalInfoFormView),
    AdaptiveRoute(page: EduAndEmployFormView),
    AdaptiveRoute(page: ResidenceFormView),
    AdaptiveRoute(page: LoanDetailsView),
    AdaptiveRoute(page: AccountInfoView),
    AdaptiveRoute(page: SuccessView),
  ],
)
class $Router {}
