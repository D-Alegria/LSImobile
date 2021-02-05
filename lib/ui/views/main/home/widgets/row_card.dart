import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class RowCard extends StatelessWidget {
  final String icon;
  final String firstText;
  final String secondText;
  final Color containerColor;
  final Color borderColor;
  final Function onTap;

  RowCard({
    this.icon,
    this.firstText,
    this.secondText,
    this.containerColor,
    this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.yMargin(context, 164.h),
        padding: EdgeInsets.only(
          left: SizeConfig.xMargin(context, 20.w),
          right: SizeConfig.xMargin(context, 5.w),
        ),
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 23.h)),
            SvgPicture.asset(
              icon,
              color: ColorStyles.light,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 20.h)),
            Text(
              firstText,
              style: GoogleFonts.workSans(
                color: ColorStyles.orange,
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.textSize(context, 15.tx),
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 14.h)),
            Text(
              secondText,
              style: GoogleFonts.workSans(
                color: ColorStyles.grey2,
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.textSize(context, 11.tx),
                height: SizeConfig.textSize(context, 0.4)
              ),
            )
          ],
        ),
      ),
    );
  }
}
