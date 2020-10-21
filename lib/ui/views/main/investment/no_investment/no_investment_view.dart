import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/mini_investment_card.dart';

class NoInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        actions: [
          sharedIconButton(
            context: context,
            onPressed: () {},
            icon: Icon(
              Icons.info_outline_rounded,
              color: ColorStyles.light,
              size: SizeConfig.textSize(context, 7.5),
            ),
          ),
        ],
        title: RichText(
          text: TextSpan(
            text: "Investments",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
            ),
            children: [
              TextSpan(
                text: "\nN0.00",
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 4.6),
                  color: ColorStyles.orange,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            Text(
              "You currently have no investment, chose an investment plan below to get started",
              style: GoogleFonts.workSans(
                height: SizeConfig.textSize(context, 0.4),
                color: ColorStyles.light,
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.textSize(context, 5),
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 4)),
            MiniInvestmentCard(
              title: "I-Target",
              value: "N50,000 - N999,000",
              borderColor: ColorStyles.red.withOpacity(0.6),
              color: ColorStyles.red.withOpacity(0.1),
              textColor: ColorStyles.red,
              function: () => context.navigator.pushNewInvestmentView(),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            MiniInvestmentCard(
              title: "I-Freedom",
              value: "N1,000,000 - N4,999,000",
              borderColor: ColorStyles.primary.withOpacity(0.6),
              color: ColorStyles.primary.withOpacity(0.1),
              textColor: ColorStyles.primary,
              function: () => context.navigator.pushNewInvestmentView(),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            MiniInvestmentCard(
              title: "I-Premium",
              value: "N5,000,000 and above",
              borderColor: ColorStyles.blue2.withOpacity(0.6),
              color: ColorStyles.blue2.withOpacity(0.1),
              textColor: ColorStyles.blue2,
              function: () => context.navigator.pushNewInvestmentView(),
            ),
          ],
        ),
      ),
    );
  }
}
