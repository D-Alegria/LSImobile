import 'package:flutter/material.dart';
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
      height: SizeConfig.yMargin(context, 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: SizeConfig.yMargin(context, 2),
            bottom: SizeConfig.yMargin(context, 1),
            child: Container(
              height: SizeConfig.yMargin(context, 50),
              width: SizeConfig.xMargin(context, 87),
              decoration: BoxDecoration(
                color: ColorStyles.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorStyles.grey.withOpacity(0.3),
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
            top: SizeConfig.yMargin(context, 2),
            width: SizeConfig.xMargin(context, 87),
            child: Container(
              height: SizeConfig.yMargin(context, 20),
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
            top: SizeConfig.yMargin(context, 5),
            left: SizeConfig.xMargin(context, 8),
            child: Text(
              firstText,
              style: TextStyle(
                fontSize: SizeConfig.textSize(context, 4.5),
                fontWeight: FontWeight.w700,
                color: ColorStyles.blue.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 13.5),
            left: SizeConfig.xMargin(context, 8),
            child: Text(
              secondText,
              style: TextStyle(
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w700,
                color: ColorStyles.grey2,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.yMargin(context, 17),
            left: SizeConfig.xMargin(context, 8),
            child: Text(
              thirdText,
              style: TextStyle(
                fontSize: SizeConfig.textSize(context, 4),
                fontWeight: FontWeight.w700,
                color: ColorStyles.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.yMargin(context, 20),
            ),
            width: SizeConfig.xMargin(context, 60),
            child: FlatButton(
              onPressed: onPressed,
              color: ColorStyles.blue3.withOpacity(0.1),
              child: Text(
                buttonText,
                style: TextStyle(
                  color: ColorStyles.blue.withOpacity(0.7),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
