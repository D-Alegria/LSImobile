import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class RoundButton extends StatelessWidget {
  final Function onTap;
  final Widget icon;
  final String text;
  final Color background;

  const RoundButton({
    Key key,
    this.onTap,
    this.icon,
    this.text,
    this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.xMargin(context, 2),
              vertical: SizeConfig.yMargin(context, 2),
            ),
            height: SizeConfig.yMargin(context, 9),
            width: SizeConfig.xMargin(context, 17),
            child: icon,
            decoration: BoxDecoration(
              color: background.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 0.4)),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
              color: ColorStyles.grey2,
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textSize(context, 4),
            ),
          ),
        ],
      ),
    );
  }
}