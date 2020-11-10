import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class InvestmentStatementView extends StatelessWidget {
  final String arrowUp = "assets/svgs/icons/arrow_up.svg";
  final String arrowDown = "assets/svgs/icons/arrow_down.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: ColorStyles.black),
        centerTitle: false,
        title: Text(
          "Statement",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return index % 2 == 0
                ? sharedInfoListTile(
                    icon: SvgPicture.asset(arrowDown),
                    context: context,
                    title: "Investment Plan",
                    subTitle: "Deposit",
                    trailingText: "N200,000",
                    trailingSubText: "3 days ago",
                    iconBackgroundColor: ColorStyles.green1.withOpacity(0.2),
                    textColor: ColorStyles.green1,
                  )
                : sharedInfoListTile(
                    icon: SvgPicture.asset(arrowUp),
                    context: context,
                    title: "Investment Plan",
                    subTitle: "Deposit",
                    trailingText: "N200,000",
                    trailingSubText: "3 days ago",
                    iconBackgroundColor: ColorStyles.red.withOpacity(0.2),
                    textColor: ColorStyles.red,
                  );
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
