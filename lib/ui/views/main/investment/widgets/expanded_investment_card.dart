import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ExpandedInvestmentCard extends StatelessWidget {
  final Color color;
  final InvestmentProduct investment;
  final Color borderColor;
  final Color textColor;
  final double angle;
  final String circlePie = "assets/svgs/circle_pie.svg";
  final Function onTap;

  const ExpandedInvestmentCard({
    Key key,
    this.color,
    this.borderColor,
    this.textColor,
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
        horizontal: SizeConfig.yMargin(context, 2),
        vertical: SizeConfig.xMargin(context, 4),
      ),
      borderColor: borderColor,
      color: color,
      height: SizeConfig.yMargin(context, 20),
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
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 4.5),
                      color: textColor,
                      height: SizeConfig.textSize(context, 0.42),
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\n${double.parse(investment.investmentAmount).moneyFormat} - ${double.parse(investment.investmentMaxAmount).moneyFormat}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textSize(context, 5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.rotate(
                angle: angle,
                alignment: FractionalOffset.center,
                child: SvgPicture.asset(circlePie, color: borderColor),
              )
            ],
          ),
          // Spacer(),
          Text(
            "Earn up to ${investment.interest}% by investing in a fixed plan. Started form ${double.parse(investment.investmentAmount).moneyFormat}",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.textSize(context, 4),
              color: ColorStyles.black,
              height: SizeConfig.textSize(context, 0.37),
            ),
          ),
        ],
      ),
    );
  }
}
