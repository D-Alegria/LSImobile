import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/make_payment/view_model/make_payment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/loan_card.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/loan_history_mini.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/mini_loan_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ActiveLoanView extends StatelessWidget {
  final Loan currentLoan;
  final List<Loan> loanHistory;

  const ActiveLoanView({
    Key key,
    @required this.currentLoan,
    @required this.loanHistory,
  }) : super(key: key);

  final String optionsIcon = "assets/svgs/icons/options_icon.svg";
  final String book = "assets/svgs/icons/book.svg";
  final String download = "assets/svgs/download.svg";
  final String creditCard = "assets/svgs/icons/credit_card.svg";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanViewCubit, LoanViewState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorStyles.white,
          centerTitle: false,
          title: Text(
            "Active Loan",
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.dark.withOpacity(0.8),
            ),
          ),
          actions: [
            sharedIconButton(
              context: context,
              onPressed: () {},
              icon: SvgPicture.asset(optionsIcon),
            ),
          ],
        ),
        body: state.map(
          initial: (e) => Container(),
          loading: (e) => sharedLoader(),
          loaded: (e) => Container(
            padding: EdgeInsets.only(
              left: SizeConfig.xMargin(context, 5),
              right: SizeConfig.xMargin(context, 5),
              top: SizeConfig.yMargin(context, 2),
            ),
            width: SizeConfig.xMargin(context, 100),
            child: ListView(
              children: [
                LoanCard(currentLoan: currentLoan),
                SizedBox(height: SizeConfig.yMargin(context, 28.h)),
                Row(
                  children: [
                    MiniLoanCard(
                      color: ColorStyles.lightBlue.withOpacity(0.1),
                      borderColor: ColorStyles.lightBlue.withOpacity(0.3),
                      image: creditCard,
                      text: "Make Payment",
                      onTap: () {
                        if (currentLoan.loanStatus != '3')
                          return showInfoSnackBar(
                              context, 'Loan isn\'t active');
                        context.bloc<MakePaymentCubit>().init(
                            currentLoan.nextPaymentAmount,
                            currentLoan.requestId);
                        return context.navigator.pushMakePaymentView(
                            amount: currentLoan.nextPaymentAmount);
                      },
                    ),
                    SizedBox(width: SizeConfig.xMargin(context, 12.w)),
                    MiniLoanCard(
                      color: ColorStyles.orange.withOpacity(0.1),
                      borderColor: ColorStyles.orange.withOpacity(0.3),
                      image: book,
                      text: "View Schedule",
                      onTap: () => context.navigator.pushLoanScheduleView(
                          requestId: currentLoan.requestId),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedWideButton(
                  onTap: () async {
                    if (currentLoan.loanStatus == '3' &&
                        await canLaunch(currentLoan.offerLink)) {
                      await launch(
                        currentLoan.offerLink,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true,
                      );
                    } else {
                      showErrorSnackBar(context, "Loan isn't active");
                    }
                  },
                  backgroundColor: currentLoan.loanStatus == '3'
                      ? ColorStyles.green2
                      : ColorStyles.grey,
                  text: "View Contract",
                  image: Icon(
                    Icons.last_page,
                    size: SizeConfig.textSize(context, 8),
                    color: currentLoan.loanStatus == '3'
                        ? ColorStyles.green2
                        : ColorStyles.grey,
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 28.h)),
                SizedBox(
                  height: SizeConfig.yMargin(context, 342.h),
                  child: LoanHistory(loanHistory: loanHistory),
                ),
              ],
            ),
          ),
          error: (e) => sharedErrorWidget(context, e.message),
        ),
      ),
    );
  }
}
