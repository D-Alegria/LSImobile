import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class LoanForm extends StatelessWidget {
  final String title;
  final double height;
  final Widget form;

  const LoanForm({
    Key key,
    @required this.title,
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
                  header(context, title),
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
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: SizeConfig.yMargin(context, 75),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: form,
    );
  }

  Widget header(BuildContext context, String title) {
    return Positioned(
      left: SizeConfig.xMargin(context, 5),
      right: SizeConfig.xMargin(context, 0),
      bottom: SizeConfig.yMargin(context, 5),
      child: Text(
        title,
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textSize(context, 8),
          color: ColorStyles.white,
        ),
      ),
    );
  }
}
