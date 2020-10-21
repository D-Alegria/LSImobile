import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class FundLengthOptions extends StatelessWidget {
  const FundLengthOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 16),
      child: ListView.separated(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: SizeConfig.xMargin(context, 33),
          alignment: Alignment.center,
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, 3)),
          child: RichText(
            text: TextSpan(
              text: "3 months",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
                color: ColorStyles.light,
                height: SizeConfig.textSize(context, 0.46),
              ),
              children: [
                TextSpan(
                  text: "\n14%",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    color: ColorStyles.orange,
                  ),
                ),
                TextSpan(
                  text: "\nper annum",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    color: ColorStyles.grey3,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: ColorStyles.grey6,
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: SizeConfig.xMargin(context, 7),
        ),
      ),
    );
  }
}
