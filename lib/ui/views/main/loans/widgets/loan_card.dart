import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanCard extends StatelessWidget {
  final Loan currentLoan;

  const LoanCard({
    Key key,
    @required this.currentLoan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getBadge(String val) {
      int indicator = int.parse(val);
      if (indicator < 1)
        return rejectedBadge(context);
      else if (indicator > 0 && indicator < 3)
        return processingBadge(context);
      else if (indicator == 3)
        return activeBadge(context);
      else if (indicator == 5)
        return closedBadge(context);
      else
        return Container();
    }

    Widget checkIfDue(String val) {
      if (val == "0")
        return Container();
      else
        return dueBadge(context, double.parse(val).moneyFormat(2));
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 23.w),
        vertical: SizeConfig.yMargin(context, 18.h),
      ),
      height: SizeConfig.yMargin(context, 194.h),
      decoration: BoxDecoration(
        gradient: ColorStyles.blueGradient,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getBadge(currentLoan.loanStatus),
              checkIfDue(currentLoan.nextPaymentAmount),
            ],
          ),
          SizedBox(height: SizeConfig.yMargin(context, 33.h),),
          RichText(
            text: TextSpan(
              text:
                  "${double.parse(currentLoan.requestPrincipal).moneyFormat(2)}",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                color: ColorStyles.white,
                fontSize: SizeConfig.textSize(context, 30.tx),
              ),
              children: [
                TextSpan(
                  text:
                      " / ${currentLoan.requestTenor} ${currentLoan.loanDuration}",
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w600,
                    color: ColorStyles.grey,
                    fontSize: SizeConfig.textSize(context, 16.tx),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${currentLoan.hmp}/${currentLoan.hmr} Paid",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  color: ColorStyles.yellow1,
                  fontSize: SizeConfig.textSize(context, 12.tx),
                ),
              ),
              Text(
                currentLoan.nextPaymentDate,
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w400,
                  color: ColorStyles.white,
                  fontSize: SizeConfig.textSize(context, 12.tx),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
