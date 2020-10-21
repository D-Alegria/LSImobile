import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ExpandedInvestmentCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final String details;
  final double angle;
  final String circlePie = "assets/svgs/circle_pie.svg";

  const ExpandedInvestmentCard({
    Key key,
    this.title,
    this.value,
    this.color,
    this.borderColor,
    this.textColor,
    this.details,
    this.angle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sharedOutlineContainer(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.yMargin(context, 4),
        vertical: SizeConfig.xMargin(context, 4),
      ),
      borderColor: borderColor,
      color: color,
      height: SizeConfig.yMargin(context, 25),
      width: SizeConfig.xMargin(context, 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    color: textColor,
                    height: SizeConfig.textSize(context, 0.42),
                  ),
                  children: [
                    TextSpan(
                      text: "\n$value",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textSize(context, 5),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: angle,
                alignment: FractionalOffset.center,
                child: SvgPicture.asset(circlePie, color: borderColor),
              )
            ],
          ),
          Spacer(),
          Text(
            details,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
              height: SizeConfig.textSize(context, 0.37),
            ),
          ),
        ],
      ),
    );
  }
}
