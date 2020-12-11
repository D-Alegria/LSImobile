import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanForm extends StatelessWidget {
  final String title;
  final Widget form;

  const LoanForm({
    Key key,
    @required this.title,
    @required this.form,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.primaryBlue,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: ColorStyles.primaryBlue,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: ColorStyles.primaryGradient),
        height: SizeConfig.yMargin(context, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, title),
            Expanded(child: formContainer(context, form)),
          ],
        ),
      ),
    );
  }

  Widget formContainer(BuildContext context, Widget form) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: SizeConfig.yMargin(context, -23),
            right: SizeConfig.xMargin(context, -50),
            left: SizeConfig.xMargin(context, 0),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(51, 255, 234, 164),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.yMargin(context, -20),
            right: SizeConfig.xMargin(context, 0),
            left: SizeConfig.xMargin(context, -50),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(15, 242, 74, 74),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.yMargin(context, -31),
            right: SizeConfig.xMargin(context, 0),
            left: SizeConfig.xMargin(context, -50),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(15, 242, 74, 74),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.yMargin(context, -29),
            right: SizeConfig.xMargin(context, -50),
            left: SizeConfig.xMargin(context, 0),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(51, 168, 213, 255),
              ),
            ),
          ),
          form
        ],
      ),
    );
  }

  Widget header(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.xMargin(context, 24.tx)),
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
