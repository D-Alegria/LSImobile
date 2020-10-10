import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class SmallBadge extends StatelessWidget {
  final String text;
  final Color indicatorColor;

  const SmallBadge({
    Key key,
    @required this.text,
    @required this.indicatorColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: SizeConfig.textSize(context, 3),
          color: ColorStyles.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 3),
        vertical: SizeConfig.yMargin(context, 1),
      ),
      decoration: BoxDecoration(
        color: indicatorColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
