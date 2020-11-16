import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/investment_plan_card.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/round_button.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/terminate_form.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/withdraw_form.dart';

class InvestmentPlanView extends StatelessWidget {
  final String book = "assets/svgs/book.svg";
  final String withdraw = "assets/svgs/withdraw.svg";
  final String download = "assets/svgs/download.svg";
  final String rollover = "assets/svgs/rollover.svg";
  final Investment investment;

  const InvestmentPlanView({Key key, @required this.investment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showForm(Widget form) {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: ColorStyles.black.withOpacity(0.2),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: form,
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        brightness: Brightness.light,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            Text(
              investment.investmentTitle,
              style: GoogleFonts.workSans(
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            InvestmentPlanCard(investment: investment),
            SizedBox(height: SizeConfig.yMargin(context, 3.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundButton(
                  onTap: () => _showForm(WithdrawForm()),
                  text: "Withdraw",
                  background: ColorStyles.orange,
                  icon: SvgPicture.asset(
                    withdraw,
                    color: ColorStyles.orange,
                    width: SizeConfig.textSize(context, 8),
                  ),
                ),
                RoundButton(
                  onTap: () {},
                  text: "Rollover",
                  background: ColorStyles.blue,
                  icon: SvgPicture.asset(
                    rollover,
                    color: ColorStyles.blue,
                    width: SizeConfig.textSize(context, 6),
                  ),
                ),
                RoundButton(
                  onTap: () => _showForm(TerminateForm()),
                  text: "Terminate",
                  background: ColorStyles.red,
                  icon: Icon(
                    Icons.close,
                    color: ColorStyles.red,
                    size: SizeConfig.textSize(context, 9),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            SharedWideButton(
              backgroundColor: ColorStyles.green2,
              text: "Download Investment Advice",
              onTap: () {},
              image: SvgPicture.asset(download),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            SharedWideButton(
              backgroundColor: ColorStyles.blue,
              text: "My statement",
              onTap: () => FlushbarHelper.createInformation(
                message:
                    "The statement has been sent successfully to your email",
                duration: new Duration(seconds: 5),
              ).show(context),
              image: SvgPicture.asset(book),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedTable(
              context: context,
              list: [
                [
                  "Investment amount",
                  double.parse(investment.requestPrincipal).moneyFormat
                ],
                [
                  "Tenure",
                  "${investment.requestTenor} ${investment.loanDuration}"
                ],
                ["Investment date", Jiffy(investment.fundsReceivedDate).yMMMd],
                ["Maturity date", Jiffy(investment.maturityDate).yMMMd],
                [
                  "Interest rate",
                  "${investment.requestRate} ${investment.interestDuration}"
                ],
                [
                  "Accrued Interest",
                  double.parse(investment.totalInterests).moneyFormat
                ],
                ["Withholding tax", "0"],
                [
                  "Maturity Value",
                  double.parse(investment.maturityValue).moneyFormat
                ],
              ],
            )
          ],
        ),
      ),
    );
  }
}
