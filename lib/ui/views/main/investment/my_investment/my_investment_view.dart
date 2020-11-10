import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/investment_plan_card.dart';

class NewInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget add() {
      return FloatingActionButton(
        backgroundColor: ColorStyles.orange,
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(
          Icons.add,
          size: SizeConfig.textSize(context, 9),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        brightness: Brightness.light,
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
            InvestmentPlanCard1(),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            InvestmentPlanCard1(),
          ],
        ),
      ),
      floatingActionButton: add(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
