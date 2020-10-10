import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class RowCard extends StatelessWidget {
  final String icon;
  final String firstText;
  final String secondText;
  final Color containerColor;
  final Color borderColor;
  final double leftMargin;
  final double rightMargin;

  RowCard({
    this.icon,
    this.firstText,
    this.secondText,
    this.containerColor,
    this.borderColor,
    this.leftMargin,
    this.rightMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 23),
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 1.5),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 3.5),
      ),
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.yMargin(context, 3),
          ),
          SvgPicture.asset(
            icon,
            color: ColorStyles.light,
          ),
          SizedBox(
            height: SizeConfig.yMargin(context, 3),
          ),
          Text(
            firstText,
            style: TextStyle(
              color: ColorStyles.orange,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 4),
            ),
          ),
          SizedBox(
            height: SizeConfig.yMargin(context, 3),
          ),
          Text(
            secondText,
            style: TextStyle(
              color: ColorStyles.grey2,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.textSize(context, 3),
            ),
          )
        ],
      ),
    );
  }
}
