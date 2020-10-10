import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class SuccessView extends StatelessWidget {
  final String successIcon = "assets/svgs/icons/success_check.svg";
  final String message;
  final String buttonText;
  final Function onTap;

  const SuccessView({
    Key key,
    @required this.message,
    @required this.buttonText,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: ColorStyles.primaryGradient),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 20),
          horizontal: SizeConfig.xMargin(context, 15),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SvgPicture.asset(successIcon),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textSize(context, 5),
                  color: ColorStyles.white,
                ),
              ),
              sharedOutlineRaisedButton(
                  context: context,
                  onPressed: onTap,
                  color: ColorStyles.white,
                  text: buttonText,
                  minWidth: SizeConfig.xMargin(context, 80))
            ],
          ),
        ),
      ),
    );
  }
}
