import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class OtherServices extends StatelessWidget {
  final String image;
  final String topText;
  final String bottomText;
  final Color containerColor;

  OtherServices({
    this.image,
    this.topText,
    this.bottomText,
    this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 10),
      ),
      margin: EdgeInsets.only(
        right: SizeConfig.xMargin(context, 4),
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: SizeConfig.xMargin(context, 10),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topText,
                style: GoogleFonts.workSans(
                  color: ColorStyles.white,
                  fontSize: SizeConfig.textSize(context, 5.5),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                bottomText,
                style: GoogleFonts.workSans(
                  color: ColorStyles.white,
                  fontSize: SizeConfig.textSize(context, 5.5),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
