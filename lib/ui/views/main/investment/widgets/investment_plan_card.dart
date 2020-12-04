import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class InvestmentCard extends StatelessWidget {
  final Investment investment;

  const InvestmentCard({
    Key key,
    @required this.investment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date = Jiffy(investment.maturityDate).format("dd/MM/yyyy");

    Widget getBadge() {
      if (investment.isClosed == "1")
        return closedBadge(context);
      else {
        if (investment.isActive == "0")
          return pendingBadge(context);
        else
          return activeBadge(context);
      }
    }

    return Container(
      child: sharedContainer(
        onTap: () =>
            context.navigator.pushInvestmentPlanView(investment: investment),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 15.h),
          horizontal: SizeConfig.xMargin(context, 25.w),
        ),
        gradient: ColorStyles.lightGradient,
        height: SizeConfig.yMargin(context, 141.h),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: investment.investmentTitle,
                style: GoogleFonts.roboto(
                  fontSize: SizeConfig.textSize(context, 15.tx),
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.grey2,
                  height: SizeConfig.textSize(context, 0.4),
                ),
                children: [
                  TextSpan(
                    text:
                        "\n${double.parse(investment.requestPrincipal).moneyFormat(2)}",
                    style: GoogleFonts.roboto(
                      fontSize: SizeConfig.textSize(context, 20.tx),
                      color: ColorStyles.primaryBlue,
                    ),
                  ),
                  TextSpan(
                    text:
                        "/ ${investment.requestTenor} ${investment.loanDuration}",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 16.tx),
                      fontWeight: FontWeight.w600,
                      color: ColorStyles.grey,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getBadge(),
                Text(
                  date,
                  style: GoogleFonts.workSans(
                    fontSize: SizeConfig.textSize(context, 12.tx),
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

class InvestmentPlanCard extends StatelessWidget {
  final Investment investment;

  const InvestmentPlanCard({
    Key key,
    @required this.investment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getBadge() {
      if (investment.isClosed == "1")
        return closedBadge(context);
      else {
        if (investment.isActive == "0")
          return pendingBadge(context);
        else
          return activeBadge(context);
      }
    }

    return Container(
      child: sharedContainer(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 2),
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        gradient: ColorStyles.blueGradient,
        height: SizeConfig.yMargin(context, 20),
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
                      fontSize: SizeConfig.textSize(context, 14.tx),
                      fontWeight: FontWeight.w600,
                      color: ColorStyles.yellow,
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n${double.parse(investment.requestPrincipal).moneyFormat(2)}",
                        style: GoogleFonts.roboto(
                          fontSize: SizeConfig.textSize(context, 24.tx),
                          color: ColorStyles.grey6,
                        ),
                      ),
                    ],
                  ),
                ),
                getBadge(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildRichText(
                  context,
                  "Rate",
                  "${investment.requestRate} ${investment.interestDuration}",
                  TextAlign.left,
                ),
                buildRichText(
                  context,
                  "Duration",
                  "${investment.requestTenor} ${investment.loanDuration}",
                  TextAlign.right,
                ),
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
          fontSize: SizeConfig.textSize(context, 12.tx),
          fontWeight: FontWeight.w600,
          color: ColorStyles.red,
          height: SizeConfig.textSize(context, 0.35),
        ),
        children: [
          TextSpan(
            text: "\n$second",
            style: GoogleFonts.workSans(
              fontSize: SizeConfig.textSize(context, 16.tx),
              color: ColorStyles.grey6,
            ),
          ),
        ],
      ),
    );
  }
}
