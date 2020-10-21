import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class MiniInvestmentCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final Function function;

  const MiniInvestmentCard({
    Key key,
    this.title,
    this.value,
    this.color,
    this.borderColor,
    this.textColor,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sharedOutlineContainer(
      onTap: function,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.yMargin(context, 4),
        vertical: SizeConfig.xMargin(context, 2),
      ),
      borderColor: borderColor,
      color: color,
      height: SizeConfig.yMargin(context, 15),
      width: SizeConfig.xMargin(context, 100),
      child: RichText(
        text: TextSpan(
          text: title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
            height: SizeConfig.textSize(context, 0.46),
          ),
          children: [
            TextSpan(
              text: "\n$value",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
