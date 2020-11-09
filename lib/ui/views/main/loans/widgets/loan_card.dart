import 'package:flutter/material.dart';
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
        return dueBadge(context, val); // TODO Format to money
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 3),
        vertical: SizeConfig.yMargin(context, 3),
      ),
      height: SizeConfig.yMargin(context, 24),
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
              getBadge(currentLoan.loanStatus),
              checkIfDue(currentLoan.nextPaymentAmount),
            ],
          ),
          RichText(
            text: TextSpan(
              text: "₦${currentLoan.requestPrincipal}",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorStyles.white,
                fontSize: SizeConfig.textSize(context, 9),
              ),
              children: [
                TextSpan(
                  text:
                      " / ${currentLoan.requestTenor} ${currentLoan.loanDuration}",
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
                "${currentLoan.hmp}/${currentLoan.hmr} Paid",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorStyles.yellow1,
                  fontSize: SizeConfig.textSize(context, 3.5),
                ),
              ),
              Text(
                currentLoan.nextPaymentDate,
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
