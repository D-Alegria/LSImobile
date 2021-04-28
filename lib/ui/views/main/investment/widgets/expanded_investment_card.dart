import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ExpandedInvestmentCard extends StatelessWidget {
  final Color color;
  final InvestmentProduct investment;
  final double angle;
  final String circlePie = "assets/svgs/circle_pie.svg";
  final Function onTap;

  const ExpandedInvestmentCard({
    Key key,
    this.color,
    this.angle,
    this.onTap,
    this.investment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sharedOutlineContainer(
      onTap: onTap,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 28.w),
        vertical: SizeConfig.xMargin(context, 32.h),
      ),
      borderColor: color.withOpacity(0.4),
      color: color.withOpacity(0.1),
      height: SizeConfig.yMargin(context, 164.h),
      width: SizeConfig.xMargin(context, 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  text: TextSpan(
                    text: investment.investmentTitle,
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 18.tx),
                      color: color,
                      height: SizeConfig.textSize(context, 0.35),
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n${double.parse(investment.investmentAmount).moneyFormat(0)} - ${double.parse(investment.investmentMaxAmount).moneyFormat(0)}",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textSize(context, 16.tx),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.rotate(
                angle: angle,
                alignment: FractionalOffset.center,
                child:
                    SvgPicture.asset(circlePie, color: color.withOpacity(0.4)),
              )
            ],
          ),
          // Spacer(),
          Text(
            "Earn between ${investment.tenorRate[0].rate}% - ${investment.tenorRate[investment.tenorRate.length - 1].rate}% per annum when you invest starting form ${double.parse(investment.investmentAmount).moneyFormat(0)}",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.textSize(context, 14.tx),
              color: ColorStyles.black,
              height: SizeConfig.textSize(context, 0.37),
            ),
          ),
        ],
      ),
    );
  }
}
