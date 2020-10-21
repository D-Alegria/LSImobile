import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanProductBox extends StatelessWidget {
  final String borderBox = "assets/svgs/border_box.svg";
  final Gradient gradient;
  final String title;
  final String subText;
  final String duration;
  final Color durationColor;
  final Color borderBoxColor;
  final Function action;

  const LoanProductBox({
    Key key,
    @required this.gradient,
    @required this.title,
    @required this.subText,
    @required this.duration,
    @required this.durationColor,
    @required this.borderBoxColor,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: action,
        child: sharedRaisedContainer(
          height: SizeConfig.yMargin(context, 21),
          gradient: gradient,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: title,
                      style: TextStyle(
                        height: 1.5,
                        color: ColorStyles.white,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textSize(context, 4),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\n$subText",
                          style: TextStyle(
                            fontSize: SizeConfig.textSize(context, 5.4),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Max duration: $duration months",
                    style: TextStyle(
                      color: durationColor,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 3.5),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                borderBox,
                semanticsLabel: "Outline box",
                width: SizeConfig.xMargin(context, 13),
                fit: BoxFit.fitWidth,
                color: borderBoxColor,
              ),
            ],
          ),
        ));
  }
}
