import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class LoanProductBox extends StatelessWidget {
  final String borderBox = "assets/svgs/border_box.svg";
  final Gradient gradient;
  final String title;
  final String subText;
  final String duration;
  final Color durationColor;
  final Color borderBoxColor;

  const LoanProductBox({
    Key key,
    this.gradient,
    this.title,
    this.subText,
    this.duration,
    this.durationColor,
    this.borderBoxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 21),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorStyles.black.withOpacity(0.5),
            offset: Offset(3, 3),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: title,
                  style: GoogleFonts.workSans(
                    height: 1.5,
                    color: ColorStyles.white,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 4),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "\n$subText",
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 5.4),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Max duration: $duration months",
                style: GoogleFonts.workSans(
                  color: durationColor,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(context, 3.5),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            borderBox,
            semanticsLabel: "Outline box",
            width: SizeConfig.xMargin(context, 13),
            fit: BoxFit.fitWidth,
            color: borderBoxColor,
          ),
        ],
      ),
    );
  }
}
