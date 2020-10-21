import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 3),
        vertical: SizeConfig.yMargin(context, 2),
      ),
      height: SizeConfig.yMargin(context, 23),
      decoration: BoxDecoration(
        gradient: ColorStyles.blueGradient,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sharedSmallBadge(
                context: context,
                text: "Processing",
                indicatorColor: ColorStyles.orange,
              ),
              sharedSmallBadge(
                context: context,
                text: "Due",
                indicatorColor: ColorStyles.red,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: "₦120,000",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorStyles.white,
                fontSize: SizeConfig.textSize(context, 9),
              ),
              children: [
                TextSpan(
                  text: " / 5 months",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorStyles.grey,
                    fontSize: SizeConfig.textSize(context, 5),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0/7 Paid",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorStyles.yellow1,
                  fontSize: SizeConfig.textSize(context, 3.5),
                ),
              ),
              Text(
                "02/05/2020",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorStyles.white,
                  fontSize: SizeConfig.textSize(context, 3.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
