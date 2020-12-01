import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class MiniInvestmentCard extends StatelessWidget {
  final InvestmentProduct investment;
  final Color color;
  final Function function;

  const MiniInvestmentCard({
    Key key,
    this.investment,
    this.color,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sharedOutlineContainer(
      onTap: function,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.yMargin(context, 4),
        vertical: SizeConfig.xMargin(context, 2),
      ),
      borderColor: color.withOpacity(0.4),
      color: color.withOpacity(0.1),
      height: SizeConfig.yMargin(context, 12),
      width: SizeConfig.xMargin(context, 100),
      child: RichText(
        text: TextSpan(
          text: investment.investmentTitle,
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
            height: SizeConfig.textSize(context, 0.46),
          ),
          children: [
            TextSpan(
              text:
                  "\n${double.parse(investment.investmentAmount).moneyFormat(0)} - ${double.parse(investment.investmentMaxAmount).moneyFormat(0)}",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
