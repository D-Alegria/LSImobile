import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/download_button.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/investment_plan_card.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/round_button.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/terminate_form.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/withdraw_form.dart';

class InvestmentPlanView extends StatelessWidget {
  final String book = "assets/svgs/book.svg";
  final String withdraw = "assets/svgs/withdraw.svg";

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
              "Investment plan name",
              style: GoogleFonts.workSans(
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            InvestmentPlanCard2(),
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
                  onTap: () => context.navigator.pushInvestmentStatementView(),
                  text: "My statement",
                  background: ColorStyles.blue,
                  icon: SvgPicture.asset(
                    book,
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
            DownloadButton(),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedTable(
              context: context,
              list: [
                ["Investment date", "Sep 04, 2020"],
                ["Maturity date", "Mar 04, 2021"],
                ["Interest rate", "14.0% annually"],
                ["Interest value", "N14,500"],
              ],
            )
          ],
        ),
      ),
    );
  }
}
