import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/keep_alive_page.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/history/view_model/recent_transaction_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_view/view_model/investment_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import 'history/history_view.dart';
import 'home/home_view.dart';
import 'investment/investment_view/investment_view.dart';
import 'loans/loans_view/loans_view.dart';
import 'profile/profile_view.dart';

class MainView extends StatefulWidget {
  final int pageNumber;

  const MainView({Key key, @required this.pageNumber}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final String home = "assets/svgs/icons/home_icon.svg";

  final String loans = "assets/svgs/icons/loans_icon.svg";

  final String invest = "assets/svgs/icons/invest_icon.svg";

  final String history = "assets/svgs/icons/history_icon.svg";

  final String profile = "assets/svgs/icons/profile_icon.svg";

  @override
  void initState() {
    context.bloc<UserProfileCubit>().getUserDetails();
    context.bloc<LoanViewCubit>().checkActiveLoans();
    context.bloc<RecentTransactionCubit>().getRecentTransactions();
    context.bloc<InvestmentViewCubit>().checkForInvestments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: BlocProvider(
        create: (context) => MainViewCubit(widget.pageNumber),
        child: BlocBuilder<MainViewCubit, MainViewState>(
          builder: (context, state) => Scaffold(
            backgroundColor: ColorStyles.white,
            bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 3.1),
                height: SizeConfig.textSize(context, 0.55),
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 3.1),
                height: SizeConfig.textSize(context, 0.55),
                fontWeight: FontWeight.w500,
              ),
              backgroundColor: ColorStyles.white,
              selectedFontSize: SizeConfig.textSize(context, 3.1),
              unselectedFontSize: SizeConfig.textSize(context, 3.1),
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: ColorStyles.orange,
              unselectedItemColor: ColorStyles.light,
              currentIndex: state.currentIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "Home",
                  icon: SvgPicture.asset(
                    home,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.light,
                    semanticsLabel: 'Home',
                  ),
                  activeIcon: SvgPicture.asset(
                    home,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                    semanticsLabel: 'Home Page',
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Loans",
                  icon: SvgPicture.asset(
                    loans,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.light,
                    semanticsLabel: 'Loans',
                  ),
                  activeIcon: SvgPicture.asset(
                    loans,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                    semanticsLabel: 'Loans Page',
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Investment',
                  icon: SvgPicture.asset(
                    invest,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.light,
                    semanticsLabel: 'Investment',
                  ),
                  activeIcon: SvgPicture.asset(
                    invest,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                    semanticsLabel: 'Investment Page',
                  ),
                ),
                BottomNavigationBarItem(
                  label: "History",
                  icon: SvgPicture.asset(
                    history,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.light,
                    semanticsLabel: 'History',
                  ),
                  activeIcon: SvgPicture.asset(
                    history,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                    semanticsLabel: 'History Page',
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: SvgPicture.asset(
                    profile,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.light,
                    semanticsLabel: 'Profile',
                  ),
                  activeIcon: SvgPicture.asset(
                    profile,
                    height: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                    semanticsLabel: 'Profile Page',
                  ),
                ),
              ],
              onTap: (index) => context.bloc<MainViewCubit>().changePage(index),
            ),
            body: PageView(
              controller: state.pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                KeepAlivePage(child: HomeView()),
                KeepAlivePage(child: LoansView()),
                KeepAlivePage(child: InvestmentView()),
                KeepAlivePage(child: HistoryView()),
                KeepAlivePage(child: ProfileView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
