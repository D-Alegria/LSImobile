import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart' as mc;
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ATMCard extends StatelessWidget {
  final String mCard = "assets/images/master_card.png";
  final mc.Card card;

  const ATMCard({
    Key key, this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: sharedRaisedContainer(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 1),
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        gradient: ColorStyles.lightBlueGradient,
        height: SizeConfig.yMargin(context, 25),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(mCard),
                SizedBox(width: SizeConfig.yMargin(context, 1)),
                Text(
                  card.brand,
                  style: GoogleFonts.workSans(
                    color: ColorStyles.white,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textSize(context, 5),
                  ),
                ),
              ],
            ),
            Text(
              "**** **** **** ${card.lastFourDigits}",
              style: GoogleFonts.workSans(
                color: ColorStyles.white,
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 7),
              ),
            ),
            Text(
              "${card.expMonth}/${card.expYear.substring(2)}",
              style: GoogleFonts.workSans(
                color: ColorStyles.yellow1,
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.textSize(context, 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
