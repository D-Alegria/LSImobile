import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart' as mc;
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ATMCard extends StatelessWidget {
  final String mCard = "assets/images/master_card.png";

  final String cardChip = "assets/svgs/card_chip.svg";
  final mc.Card card;

  const ATMCard({Key key, this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SharedCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            cardChip,
            width: SizeConfig.textSize(context, 26.tx),
            fit: BoxFit.fitHeight,
          ),
          Text(
            "**** **** **** ${card.lastFourDigits}",
            style: GoogleFonts.workSans(
              color: ColorStyles.white,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 24.tx),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCardDetails(
                context: context,
                subtitle:
                    "\n${card.cardLastName ?? ""} ${card.cardFirstName ?? ""}",
                title: "Card Holder Name",
              ),
              buildCardDetails(
                  context: context,
                  subtitle: "\n${card.expMonth}/${card.expYear.substring(2)}",
                  title: "Expiry Date"),
              Container(
                height: SizeConfig.yMargin(context, 40.h),
                decoration: BoxDecoration(
                  color: ColorStyles.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(mCard),
              )
            ],
          ),
        ],
      ),
    );
  }

  RichText buildCardDetails(
      {BuildContext context, String title, String subtitle}) {
    return RichText(
      text: TextSpan(
        text: title,
        style: GoogleFonts.workSans(
          color: ColorStyles.grey4,
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textSize(context, 12.tx),
        ),
        children: [
          TextSpan(
            text: subtitle,
            style: GoogleFonts.workSans(
              color: ColorStyles.white,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 14.tx),
            ),
          )
        ],
      ),
    );
  }
}

class SharedCardBackground extends StatelessWidget {
  final String cardBackground = "assets/svgs/card_background.svg";

  final Widget child;
  final double height;
  final double width;

  const SharedCardBackground({Key key, this.child, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sharedRaisedContainer(
      color: ColorStyles.neutralBlack,
      height: height ?? SizeConfig.yMargin(context, 190.h),
      width: width ?? SizeConfig.xMargin(context, 335.w),
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: -55,
            height: SizeConfig.yMargin(context, 190.h),
            child: SvgPicture.asset(
              cardBackground,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.yMargin(context, 20.h),
              horizontal: SizeConfig.xMargin(context, 26.w),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
