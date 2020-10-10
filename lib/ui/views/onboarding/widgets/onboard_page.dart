import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({
    Key key,
    @required this.image,
    @required this.onPressed,
    @required this.mainText,
    @required this.subText,
    @required this.buttonText,
  }) : super(key: key);

  final String image;
  final Function onPressed;
  final String mainText;
  final String subText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.yMargin(context, 3),
          ),
          Image.asset(image, fit: BoxFit.fitWidth),
          SizedBox(
            height: SizeConfig.yMargin(context, 5),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: mainText,
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(context, 6),
                  color: ColorStyles.dark,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "\n\n$subText",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.textSize(context, 4),
                      color: ColorStyles.light,
                    ),
                  )
                ]),
          ),
          Spacer(),
          sharedRaisedButton(
            context: context,
            text: buttonText,
            onPressed: onPressed,
            color: ColorStyles.blue,
            minWidth: SizeConfig.xMargin(context, 30),
          ),
          SizedBox(
            height: SizeConfig.yMargin(context, 7),
          ),
        ],
      ),
    );
  }
}
