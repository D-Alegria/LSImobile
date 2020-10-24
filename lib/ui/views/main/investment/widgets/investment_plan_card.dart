import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class InvestmentPlanCard1 extends StatelessWidget {
  const InvestmentPlanCard1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: sharedContainer(
        onTap: () => context.navigator.pushInvestmentPlanView(),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 3),
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        gradient: ColorStyles.lightGradient,
        height: SizeConfig.yMargin(context, 23),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Investment plan name",
                style: GoogleFonts.workSans(
                  fontSize: SizeConfig.textSize(context, 4.5),
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.grey2,
                  height: SizeConfig.textSize(context, 0.5),
                ),
                children: [
                  TextSpan(
                    text: "\n₦200,000",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 6),
                      color: ColorStyles.primaryBlue,
                    ),
                  ),
                  TextSpan(
                    text: "/ 5 months",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 5),
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.grey,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sharedSmallBadge(
                  context: context,
                  text: "Active",
                  indicatorColor: ColorStyles.green1,
                ),
                Text(
                  "02/05/2020",
                  style: GoogleFonts.workSans(
                    fontSize: SizeConfig.textSize(context, 5),
                    fontWeight: FontWeight.w600,
                    color: ColorStyles.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InvestmentPlanCard2 extends StatelessWidget {
  const InvestmentPlanCard2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: sharedContainer(
        onTap: () => context.navigator.pushInvestmentPlanView(),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 3),
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        gradient: ColorStyles.primaryGradient,
        height: SizeConfig.yMargin(context, 24),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Balance",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 4.5),
                      fontWeight: FontWeight.w600,
                      color: ColorStyles.yellow,
                      height: SizeConfig.textSize(context, 0.5),
                    ),
                    children: [
                      TextSpan(
                        text: "\n₦200,000",
                        style: GoogleFonts.workSans(
                          fontSize: SizeConfig.textSize(context, 6),
                          color: ColorStyles.grey6,
                        ),
                      ),
                    ],
                  ),
                ),
                sharedSmallBadge(
                  context: context,
                  text: "Active",
                  indicatorColor: ColorStyles.green1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildRichText(context, "Rate", "14%", TextAlign.left),
                buildRichText(context, "Duration", "5 months", TextAlign.right),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRichText(
      BuildContext context, String first, String second, TextAlign textAlign) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: first,
        style: GoogleFonts.workSans(
          fontSize: SizeConfig.textSize(context, 4.5),
          fontWeight: FontWeight.w600,
          color: ColorStyles.red,
          height: SizeConfig.textSize(context, 0.4),
        ),
        children: [
          TextSpan(
            text: "\n$second",
            style: GoogleFonts.workSans(
              color: ColorStyles.grey6,
            ),
          ),
        ],
      ),
    );
  }
}
