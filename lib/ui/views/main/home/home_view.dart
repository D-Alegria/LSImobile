import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/screen_heading.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/home/view_model/home_viewmodel.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/bottom_cards.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/home_card.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/row_card.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_view/view_model/investment_view_cubit.dart'
    as ivc;
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<HomeViewModel>(context);
    var mainView = BlocProvider.of<MainViewCubit>(context);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => Future.value([
          context.bloc<UserProfileCubit>().getUserDetails(),
          context.bloc<ivc.InvestmentViewCubit>().checkForInvestments(),
        ]),
        child: UserDetailsWrapper(
          loaded: (userData) => InvestmentWrapper(
              loaded: (investmentData) => _buildHomeView(
                  context, userData.userData.data, investmentData, model, mainView)),
        ),
      ),
    );
  }

  Widget _buildHomeView(BuildContext context, UserDetailsRequest user,
      ivc.Loaded invest, HomeViewModel model, MainViewCubit mainView) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: ListView(
        children: [
          SizedBox(height: SizeConfig.yMargin(context, 50.h)),
          ScreenHeader(
            firstText: user.profile.legalName ?? "",
            secondText: model.greeting(),
            profile: false,
            image: user.profile.fileName ?? "",
          ),
          SizedBox(height: SizeConfig.yMargin(context, 49.h)),
          HomeCard(
            firstText: 'Your Loan',
            secondText: 'Need cash urgently?',
            thirdText: 'Get a loan within minutes',
            buttonText: 'Apply for a loan',
            onPressed: () => mainView.changePage(1),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 27.h)),
          HomeCard(
            firstText: 'Your Investment',
            secondText: 'N ${invest.investmentBalance}',
            thirdText: 'Investment balance',
            buttonText: 'Book investment',
            onPressed: () => mainView.changePage(2),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 39.h)),
          Row(
            children: [
              Expanded(
                child: RowCard(
                  icon: 'assets/svgs/icons/loans_icon.svg',
                  firstText: 'Apply for a loan',
                  secondText:
                      'Apply for a loan today with as low as 1% interest',
                  containerColor: ColorStyles.blue3.withOpacity(0.1),
                  borderColor: ColorStyles.blue3,
                  onTap: () => mainView.changePage(1),
                ),
              ),
              SizedBox(width: SizeConfig.xMargin(context, 13.w)),
              Expanded(
                child: RowCard(
                  icon: 'assets/svgs/icons/invest_icon.svg',
                  firstText: 'Start investing',
                  secondText: 'Explore our risk free investment options today',
                  containerColor: ColorStyles.lightBlue.withOpacity(0.1),
                  borderColor: ColorStyles.lightBlue,
                  onTap: () => mainView.changePage(2),
                ),
              )
            ],
          ),
          SizedBox(height: SizeConfig.yMargin(context, 36.h)),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.xMargin(context, 1.5),
            ),
            child: Text(
              'Other Services',
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 16.tx),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 20.h)),
          Container(
            height: SizeConfig.yMargin(context, 129.h),
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: model.controller,
              onPageChanged: (int index) => model.onChanged(index),
              physics: ClampingScrollPhysics(),
              children: [
                OtherServices(
                  containerColor: ColorStyles.red,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Fund',
                  bottomText: 'management',
                ),
                OtherServices(
                  containerColor: ColorStyles.blue,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Assets',
                  bottomText: 'financing',
                ),
                OtherServices(
                  containerColor: ColorStyles.green,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Lease',
                  bottomText: 'financing',
                ),
                OtherServices(
                  containerColor: ColorStyles.orange,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Invoice',
                  bottomText: 'Discounting',
                ),
                OtherServices(
                  containerColor: ColorStyles.black,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Consumer',
                  bottomText: 'Loans',
                ),
                OtherServices(
                  containerColor: ColorStyles.yellow1,
                  image: 'assets/images/assets_financing.png',
                  topText: 'LPO',
                  bottomText: 'Financing',
                ),
                OtherServices(
                  containerColor: ColorStyles.dark,
                  image: 'assets/images/assets_financing.png',
                  topText: 'Financial',
                  bottomText: 'Consultancy',
                )
              ],
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(8, model.index),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 5)),
        ],
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 10 : 8,
      width: isActive ? 9 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:
              isActive ? ColorStyles.orange : ColorStyles.grey.withOpacity(0.5),
        ),
        color:
            isActive ? ColorStyles.yellow : ColorStyles.grey.withOpacity(0.5),
      ),
    );
  }

  List<Widget> _buildPageIndicator(int length, int index) {
    List<Widget> list = [];
    for (int i = 0; i < length; i++) {
      list.add(i == index ? indicator(true) : indicator(false));
    }
    return list;
  }
}
