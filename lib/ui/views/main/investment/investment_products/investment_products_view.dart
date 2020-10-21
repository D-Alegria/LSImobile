import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/expanded_investment_card.dart';

class InvestmentProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Investment Products",
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
            ExpandedInvestmentCard(
              angle: 0,
              title: "I-Target",
              value: "N50,000 - N999,000",
              details:
                  "Earn up to 15.5% by investing in a fixed plan. Started from N50,000",
              borderColor: ColorStyles.red.withOpacity(0.6),
              color: ColorStyles.red.withOpacity(0.1),
              textColor: ColorStyles.red,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 4)),
            ExpandedInvestmentCard(
              angle: 51,
              title: "I-Freedom",
              value: "N1,000,000 - N4,999,000",
              details:
                  "Earn up to 11.5% by investing in a fixed plan. Started from N1,000,000",
              borderColor: ColorStyles.primary.withOpacity(0.6),
              color: ColorStyles.primary.withOpacity(0.1),
              textColor: ColorStyles.primary,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 4)),
            ExpandedInvestmentCard(
              angle: -16,
              title: "I-Premium",
              value: "N5,000,000 and above",
              details:
                  "Earn up to 9.5% by investing in a fixed plan. Started from N5,000,000",
              borderColor: ColorStyles.blue2.withOpacity(0.6),
              color: ColorStyles.blue2.withOpacity(0.1),
              textColor: ColorStyles.blue2,
            ),
          ],
        ),
      ),
    );
  }
}
