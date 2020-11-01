import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/view_models/home_viewmodel.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/screen_heading.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/bottom_cards.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/home_card.dart';
import 'package:lsi_mobile/ui/views/main/home/widgets/row_card.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<HomeViewModel>(context);
    return BlocConsumer<UserProfileBloc, UserProfileState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => Container(),
        loaded: (val) => Scaffold(
          backgroundColor: ColorStyles.white,
          body: Container(
            height: SizeConfig.yMargin(context, 100),
            margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.xMargin(context, 5),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.xMargin(context, 1.5),
                  ),
                  child: ScreenHeader(
                    firstText: val.fullName,
                    secondText: model.greeting(),
                    investment: false,
                    image: val.profilePicture,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
                HomeCard(
                  firstText: 'Your Loan',
                  secondText: 'Need cash urgently?',
                  thirdText: 'Get a loan within minutes',
                  buttonText: 'Apply for a loan',
                  onPressed: () {
                    model.navigateToLoanView(context);
                  },
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 1),
                ),
                HomeCard(
                  firstText: 'Your Investment',
                  secondText: 'N ${val.investmentBalance}',
                  thirdText: 'Investment balance',
                  buttonText: 'Book investment',
                  onPressed: () {
                    model.navigateToInvestmentView(context);
                  },
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
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
                        onTap: () {
                          model.navigateToLoanView(context);
                        },
                      ),
                    ),
                    Expanded(
                      child: RowCard(
                        icon: 'assets/svgs/icons/invest_icon.svg',
                        firstText: 'Start investing',
                        secondText:
                            'Explore our risk free investment options today',
                        containerColor: ColorStyles.lightBlue.withOpacity(0.1),
                        borderColor: ColorStyles.lightBlue,
                        onTap: () {
                          model.navigateToInvestmentView(context);
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.xMargin(context, 1.5),
                  ),
                  child: Text(
                    'Other Services',
                    style: TextStyle(
                      fontSize: SizeConfig.textSize(context, 5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                Container(
                  height: SizeConfig.yMargin(context, 20),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: model.controller,
                    onPageChanged: (int index) {
                      model.onChanged(index);
                    },
                    physics: ClampingScrollPhysics(),
                    children: [
                      OtherServices(
                        containerColor: ColorStyles.red,
                        image: 'assets/images/assets_financing.png',
                        topText: 'Assets',
                        bottomText: 'financing',
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
                        topText: 'Assets',
                        bottomText: 'financing',
                      ),
                      OtherServices(
                        containerColor: ColorStyles.orange,
                        image: 'assets/images/assets_financing.png',
                        topText: 'Assets',
                        bottomText: 'financing',
                      ),
                      OtherServices(
                        containerColor: ColorStyles.black,
                        image: 'assets/images/assets_financing.png',
                        topText: 'Assets',
                        bottomText: 'financing',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(5, model.index),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
              ],
            ),
          ),
        ),
        error: (val) => Container(
          child: Center(
            child: Text(val.message),
          ),
        ),
      ),
      listener: (context, state) => null,
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
