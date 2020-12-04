import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class HomeCard extends StatelessWidget {
  final int index;
  final String firstText;
  final String secondText;
  final String thirdText;
  final String buttonText;
  final Function onPressed;

  const HomeCard({
    this.index,
    this.firstText,
    this.secondText,
    this.thirdText,
    this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 261.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: SizeConfig.yMargin(context, 0),
            bottom: SizeConfig.yMargin(context, 0),
            child: Container(
              height: SizeConfig.yMargin(context, 261.h),
              width: SizeConfig.xMargin(context, 331.w),
              decoration: BoxDecoration(
                color: ColorStyles.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorStyles.grey.withOpacity(0.2),
                    blurRadius: 3,
                    offset: Offset(0, 7),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 0),
            width: SizeConfig.xMargin(context, 331.w),
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    top: SizeConfig.yMargin(context, -8),
                    left: 0,
                    right: 0,
                    child: Container(
                      height: SizeConfig.yMargin(context, 15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorStyles.blue.withOpacity(0.1)),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.yMargin(context, 5),
                    left: 0,
                    right: SizeConfig.xMargin(context, -80),
                    child: Container(
                      height: SizeConfig.yMargin(context, 15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorStyles.blue.withOpacity(0.1)),
                    ),
                  ),
                ],
              ),
              height: SizeConfig.yMargin(context, 146.h),
              decoration: BoxDecoration(
                color: ColorStyles.extraLight,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 20.h),
            left: SizeConfig.xMargin(context, 19.w),
            child: Text(
              firstText,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 16.tx),
                fontWeight: FontWeight.w600,
                color: ColorStyles.blue.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 79.h),
            left: SizeConfig.xMargin(context, 19.w),
            child: Text(
              secondText,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 18.tx),
                fontWeight: FontWeight.w700,
                color: ColorStyles.grey2,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 106.h),
            left: SizeConfig.xMargin(context, 19.w),
            child: Text(
              thirdText,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 14.tx),
                fontWeight: FontWeight.w500,
                color: ColorStyles.grey,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 192.h),
            child: ButtonTheme(
              height: SizeConfig.yMargin(context, 39.h),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.xMargin(context, 40.w),
              ),
              child: FlatButton(
                onPressed: onPressed,
                color: ColorStyles.blue3.withOpacity(0.1),
                child: Text(
                  buttonText,
                  style: GoogleFonts.workSans(
                    color: ColorStyles.blue.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textSize(context, 13.tx),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
