import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanHistory extends StatelessWidget {
  final List<Loan> loanHistory;

  const LoanHistory({
    Key key,
    @required this.loanHistory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getBadge(String val) {
      int indicator = int.parse(val);
      if (indicator < 1)
        return "Rejected";
      else if (indicator > 0 && indicator < 3)
        return "Processing";
      else if (indicator == 3)
        return "Active";
      else if (indicator == 5)
        return "Closed";
      else
        return "";
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Loan History",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                color: ColorStyles.dark,
                fontSize: SizeConfig.textSize(context, 16.tx),
              ),
            ),
            Text(
              "See all",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                color: ColorStyles.blue,
                fontSize: SizeConfig.textSize(context, 16.tx),
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.yMargin(context, 1)),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              var loan = loanHistory[index];
              int indicator = int.parse(loan.loanStatus);
              if (indicator < 1) {
                return sharedInfoListTile(
                  icon: Icon(
                    Icons.close,
                    size: SizeConfig.textSize(context, 7),
                    color: ColorStyles.red,
                  ),
                  context: context,
                  title: double.parse(loan.requestPrincipal).moneyFormat(2),
                  subTitle: getBadge(loan.loanStatus),
                  trailingText: "",
                  trailingSubText: "${loan.requestTenor} ${loan.loanDuration}",
                  iconBackgroundColor: ColorStyles.red.withOpacity(0.2),
                  textColor: ColorStyles.red,
                );
              } else if (indicator > 0 && indicator < 3) {
                return sharedInfoListTile(
                  icon: Icon(
                    Icons.bar_chart_outlined,
                    size: SizeConfig.textSize(context, 7),
                    color: ColorStyles.orange,
                  ),
                  context: context,
                  title: double.parse(loan.requestPrincipal).moneyFormat(2),
                  subTitle: getBadge(loan.loanStatus),
                  trailingText: "",
                  trailingSubText: "${loan.requestTenor} ${loan.loanDuration}",
                  iconBackgroundColor: ColorStyles.orange.withOpacity(0.2),
                  textColor: ColorStyles.orange,
                );
              } else if (loan.loanStatus == "3") {
                return sharedInfoListTile(
                  icon: Icon(
                    Icons.check,
                    size: SizeConfig.textSize(context, 7),
                    color: ColorStyles.green1,
                  ),
                  context: context,
                  title: double.parse(loan.requestPrincipal).moneyFormat(2),
                  subTitle: getBadge(loan.loanStatus),
                  trailingText: "",
                  trailingSubText: "${loan.requestTenor} ${loan.loanDuration}",
                  iconBackgroundColor: ColorStyles.green1.withOpacity(0.2),
                  textColor: ColorStyles.green1,
                );
              } else if (loan.loanStatus == "5") {
                return sharedInfoListTile(
                  icon: Icon(
                    Icons.check,
                    size: SizeConfig.textSize(context, 7),
                    color: ColorStyles.blue,
                  ),
                  context: context,
                  title: double.parse(loan.requestPrincipal).moneyFormat(2),
                  subTitle: getBadge(loan.loanStatus),
                  trailingText: "",
                  trailingSubText: "${loan.requestTenor} ${loan.loanDuration}",
                  iconBackgroundColor: ColorStyles.blue.withOpacity(0.2),
                  textColor: ColorStyles.blue,
                );
              } else {
                return sharedInfoListTile(
                  icon: Icon(
                    Icons.close,
                    size: SizeConfig.textSize(context, 7),
                    color: ColorStyles.black,
                  ),
                  context: context,
                  title: double.parse(loan.requestPrincipal).moneyFormat(2),
                  subTitle: getBadge(loan.loanStatus),
                  trailingText: "",
                  trailingSubText: "${loan.requestTenor} ${loan.loanDuration}",
                  iconBackgroundColor: ColorStyles.black.withOpacity(0.2),
                  textColor: ColorStyles.black,
                );
              }
            },
            itemCount: loanHistory.length,
          ),
        ),
      ],
    );
  }
}
