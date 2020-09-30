import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/main/history/history_view.dart';
import 'package:lsi_mobile/ui/views/main/home/home_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/profile_view.dart';

import 'loans/loans_view/loans_view.dart';

class MainView extends StatefulWidget {
  final int pageNumber;

  const MainView({
    Key key,
    @required this.pageNumber,
  }) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final String home = "assets/svgs/icons/home_icon.svg";
  final String loans = "assets/svgs/icons/loans_icon.svg";
  final String invest = "assets/svgs/icons/invest_icon.svg";
  final String history = "assets/svgs/icons/history_icon.svg";
  final String profile = "assets/svgs/icons/profile_icon.svg";
  int _currentIndex;

  @override
  void initState() {
    _currentIndex = widget.pageNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PageController _pageController =
        PageController(initialPage: widget.pageNumber, keepPage: true);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoanViewCubit()..checkActiveLoans(),
          ),
        ],
        child: Scaffold(
          backgroundColor: ColorStyles.white,
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: GoogleFonts.workSans(
              fontSize: SizeConfig.textSize(context, 3.1),
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: GoogleFonts.workSans(
              fontSize: SizeConfig.textSize(context, 3.1),
              fontWeight: FontWeight.w500,
            ),
            selectedFontSize: SizeConfig.textSize(context, 3.1),
            unselectedFontSize: SizeConfig.textSize(context, 3.1),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorStyles.orange,
            unselectedItemColor: ColorStyles.light,
            currentIndex: _currentIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.textSize(context, 1.3),
                    ),
                    Text(
                      "Home",
                    ),
                  ],
                ),
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
                title: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.textSize(context, 1.3),
                    ),
                    Text(
                      "Loans",
                    ),
                  ],
                ),
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
                title: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.textSize(context, 1.3),
                    ),
                    Text(
                      "Investment",
                    ),
                  ],
                ),
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
                title: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.textSize(context, 1.3),
                    ),
                    Text(
                      "History",
                    ),
                  ],
                ),
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
                title: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.textSize(context, 1.3),
                    ),
                    Text(
                      "Profile",
                    ),
                  ],
                ),
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
            onTap: (index) {
              setState(
                () {
                  _currentIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
              );
            },
            // onTap: model.changeTab,
          ),
          body: PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeView(),
              LoansView(),
              InvestmentView(),
              HistoryView(),
              ProfileView(),
            ],
          ),
        ),
      ),
    );
  }
}
