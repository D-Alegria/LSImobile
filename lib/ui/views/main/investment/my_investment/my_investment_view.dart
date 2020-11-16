import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/investment_plan_card.dart';

class NewInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget add() {
      return FloatingActionButton(
        backgroundColor: ColorStyles.orange,
        onPressed: () => context.navigator.pushInvestmentProductsView(),
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
          "My Investment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: InvestmentWrapper(
        loaded: (loaded) => Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.xMargin(context, 5),
          ),
          child: ListView.separated(
            itemCount: loaded.investments.length,
            separatorBuilder: (context, index) =>
                SizedBox(height: SizeConfig.yMargin(context, 2.5)),
            itemBuilder: (context, index) {
              var investment = loaded.investments[index];

              return InvestmentCard(investment: investment);
            },
          ),
        ),
      ),
      floatingActionButton: add(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
