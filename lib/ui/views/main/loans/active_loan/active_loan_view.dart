import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/loan_card.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/loan_history_mini.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/mini_loan_card.dart';

class ActiveLoanView extends StatelessWidget {
  const ActiveLoanView({
    Key key,
  }) : super(key: key);

  final String optionsIcon = "assets/svgs/icons/options_icon.svg";
  final String book = "assets/svgs/icons/book.svg";
  final String creditCard = "assets/svgs/icons/credit_card.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Active Loan",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
        actions: [
          ButtonTheme(
            minWidth: SizeConfig.xMargin(context, 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                optionsIcon,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: SizeConfig.xMargin(context, 5),
          right: SizeConfig.xMargin(context, 5),
          top: SizeConfig.yMargin(context, 2),
        ),
        width: SizeConfig.xMargin(context, 100),
        child: Column(
          children: [
            LoanCard(),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            Row(
              children: [
                MiniLoanCard(
                  color: ColorStyles.lightBlue.withOpacity(0.1),
                  borderColor: ColorStyles.lightBlue.withOpacity(0.3),
                  image: creditCard,
                  text: "Make Payment",
                ),
                SizedBox(
                  width: SizeConfig.xMargin(context, 5),
                ),
                MiniLoanCard(
                  color: ColorStyles.orange.withOpacity(0.1),
                  borderColor: ColorStyles.orange.withOpacity(0.3),
                  image: book,
                  text: "View Schedule",
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            LoanHistory(),
          ],
        ),
      ),
    );
  }
}
