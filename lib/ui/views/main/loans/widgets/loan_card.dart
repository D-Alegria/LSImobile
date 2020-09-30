import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/small_badge.dart';

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
              SmallBadge(
                text: "Processing",
                indicatorColor: ColorStyles.orange,
              ),
              SmallBadge(
                text: "Due",
                indicatorColor: ColorStyles.red,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: "₦120,000",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w700,
                color: ColorStyles.white,
                fontSize: SizeConfig.textSize(context, 9),
              ),
              children: [
                TextSpan(
                  text: " / 5 months",
                  style: GoogleFonts.workSans(
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
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  color: ColorStyles.yellow1,
                  fontSize: SizeConfig.textSize(context, 3.5),
                ),
              ),
              Text(
                "02/05/2020",
                style: GoogleFonts.workSans(
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
