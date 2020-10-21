import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/fund_length_options.dart';

class NewInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
        title: Text(
          "New Investment",
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
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            SharedTextFormField(
              labelText: "Investment name",
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            SharedTextFormField(
              labelText: "How much do you want to invest?",
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            Text(
              "For how long would you like to hold your investment",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.textSize(context, 4.3),
                color: ColorStyles.black,
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            FundLengthOptions(),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Proceed to funding",
            )
          ],
        ),
      ),
    );
  }
}
