import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';
import 'package:lsi_mobile/ui/views/onboarding/widgets/onboard_page.dart';

class OnBoardingView extends StatelessWidget {
  final String invest = "assets/images/invest.png";
  final String manRelaxing = "assets/svgs/man_relaxing.svg";
  final String easyPayment = "assets/images/stack_cards.png";
  final String logo = "assets/images/logo.png";
  final PageController _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: SafeArea(
        child: Container(
          width: SizeConfig.xMargin(context, 100),
          child: Stack(
            children: [
              Positioned(
                bottom: SizeConfig.yMargin(context, -23),
                right: SizeConfig.xMargin(context, -50),
                left: SizeConfig.xMargin(context, 0),
                child: Container(
                  height: SizeConfig.yMargin(context, 40),
                  width: SizeConfig.xMargin(context, 40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(51, 255, 234, 164),
                  ),
                ),
              ),
              Positioned(
                bottom: SizeConfig.yMargin(context, -20),
                right: SizeConfig.xMargin(context, 0),
                left: SizeConfig.xMargin(context, -50),
                child: Container(
                  height: SizeConfig.yMargin(context, 40),
                  width: SizeConfig.xMargin(context, 40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(15, 242, 74, 74),
                  ),
                ),
              ),
              PageView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  OnBoardPage(
                    mainText: "Invest with Intiative Moni",
                    subText:
                        "Grow your wealth today by investing in our high-interest investment plans",
                    buttonText: "Next",
                    image: Image.asset(invest, fit: BoxFit.fitWidth),
                    onPressed: () => changePage(context, 1),
                  ),
                  OnBoardPage(
                    mainText: "Get a loan in minutes",
                    subText:
                        "Getting access to loans is simple with Initiative Moni. No collateral required. Instant funding on approval",
                    buttonText: "Next",
                    image: SvgPicture.asset(manRelaxing, fit: BoxFit.fitWidth),
                    onPressed: () => changePage(context, 2),
                  ),
                  OnBoardPage(
                    mainText: "Easy Payment",
                    subText:
                        "Payment made easy through debit card, credit card",
                    buttonText: "Next",
                    image: Image.asset(easyPayment, fit: BoxFit.fitWidth),
                    onPressed: () => changePage(context, 3),
                  ),
                  OnBoardPage(
                    mainText: "",
                    subText:
                        "Initiative Moni is powered by Initiative Finance Limited. A CBN regulated financial institution.",
                    buttonText: "Get started",
                    image: Image.asset(logo, fit: BoxFit.fitWidth),
                    onPressed: () => context.navigator.pushAndRemoveUntil(
                      Routes.authWrapper,
                      (route) => false,
                    ),
                  ),
                ],
                controller: _pageController,
                allowImplicitScrolling: true,
              ),
              BlocBuilder<OnboardPageCubit, int>(
                builder: (context, state) => Positioned(
                  left: 0,
                  right: 0,
                  bottom: SizeConfig.yMargin(context, 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < 4; i++)
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.xMargin(context, 1),
                          ),
                          height: SizeConfig.yMargin(context, 3),
                          width: SizeConfig.xMargin(context, 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: state == i
                                ? ColorStyles.primary
                                : ColorStyles.light,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changePage(BuildContext context, int page) {
    _pageController.animateToPage(
      page,
      duration: new Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    context.bloc<OnboardPageCubit>().changePage();
  }
}
