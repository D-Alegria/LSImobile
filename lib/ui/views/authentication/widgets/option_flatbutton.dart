import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class OptionFlatButton extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Function action;

  const OptionFlatButton({
    Key key,
    @required this.firstText,
    this.secondText,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: action,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "$firstText  ",
          style: GoogleFonts.workSans(
            fontSize: SizeConfig.textSize(context, 4),
            fontWeight: FontWeight.w400,
            color: ColorStyles.light,
          ),
          children: <TextSpan>[
            TextSpan(
              text: secondText,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                color: ColorStyles.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
