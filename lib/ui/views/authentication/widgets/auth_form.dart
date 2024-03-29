import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class AuthForm extends StatelessWidget {
  final String title;
  final String subTitle;
  final double height;
  final Widget form;

  const AuthForm({
    Key key,
    @required this.title,
    @required this.subTitle,
    @required this.height,
    @required this.form,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorStyles.primaryGradient,
      ),
      height: SizeConfig.yMargin(context, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  translucentImage(context),
                  header(context, title, subTitle),
                ],
              ),
            ),
          ),
          formContainer(context, height, form),
        ],
      ),
    );
  }

  Widget formContainer(BuildContext context, double height, Widget form) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.yMargin(context, 5.5)),
          topRight: Radius.circular(SizeConfig.yMargin(context, 5.5)),
        ),
      ),
      height: SizeConfig.yMargin(context, height),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: form,
    );
  }

  Widget header(BuildContext context, String title, String subTitle) {
    return Positioned(
      left: SizeConfig.xMargin(context, 5),
      right: SizeConfig.xMargin(context, 0),
      top: SizeConfig.yMargin(context, 7),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: title,
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 9),
            color: ColorStyles.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "\n$subTitle",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.textSize(context, 5),
                color: ColorStyles.extraLight,
                height: SizeConfig.textSize(context, 0.4)
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget translucentImage(BuildContext context) {
    return Positioned(
      bottom: SizeConfig.yMargin(context, -5),
      left: SizeConfig.xMargin(context, 0),
      right: SizeConfig.xMargin(context, 0),
      child: Container(
        height: SizeConfig.yMargin(context, 40),
        width: SizeConfig.xMargin(context, 100),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: ColorStyles.primaryGradient,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.modulate,
            ),
            image: AssetImage("assets/images/app_logo.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
