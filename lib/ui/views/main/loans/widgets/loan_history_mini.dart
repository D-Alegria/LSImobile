import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanHistory extends StatelessWidget {
  final List<Loan> loanHistory;

  const LoanHistory({
    Key key,
    this.loanHistory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Loan History",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.dark,
                  fontSize: SizeConfig.textSize(context, 4.7),
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.blue,
                  fontSize: SizeConfig.textSize(context, 4.7),
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.yMargin(context, 1),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                var loan = loanHistory[index];

                // if(loan.)

                return index % 2 == 0
                    ? sharedInfoListTile(
                        icon: Icon(
                          Icons.check,
                          size: SizeConfig.textSize(context, 7),
                          color: ColorStyles.green1,
                        ),
                        context: context,
                        title: "300,000",
                        subTitle: "Completed",
                        trailingText: "14%",
                        trailingSubText: "3 months",
                      )
                    : sharedInfoListTile(
                        icon: Icon(
                          Icons.close,
                          size: SizeConfig.textSize(context, 7),
                          color: ColorStyles.red,
                        ),
                        context: context,
                        title: "230,000",
                        subTitle: "Withdrawal",
                        trailingText: "18%",
                        trailingSubText: "4 months",
                        red: true,
                      );
              },
              itemCount: loanHistory.length,
            ),
          ),
        ],
      ),
    );
  }
}
