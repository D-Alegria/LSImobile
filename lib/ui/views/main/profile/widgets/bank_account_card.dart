import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class BankAccountCard extends StatelessWidget {
  const BankAccountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: sharedContainer(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.yMargin(context, 1),
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        gradient: ColorStyles.lightGradient,
        height: SizeConfig.yMargin(context, 23),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "First Bank",
                style: GoogleFonts.workSans(
                  fontSize: SizeConfig.textSize(context, 5),
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.blue2,
                  height: SizeConfig.textSize(context, 0.7),
                ),
                children: [
                  TextSpan(
                    text: "\n234353312123232",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 6),
                      color: ColorStyles.grey2,
                    ),
                  ),
                  TextSpan(
                    text: "\nMargaret Novakowska",
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 5),
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.grey3,
                    ),
                  )
                ],
              ),
            ),
            sharedIconButton(
              context: context,
              onPressed: () {},
              icon: Icon(Icons.more_vert_rounded),
            )
          ],
        ),
      ),
    );
  }
}