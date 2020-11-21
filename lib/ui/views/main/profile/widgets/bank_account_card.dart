import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class BankAccountCard extends StatelessWidget {
  final String bankName;
  final String accountNumber;
  final String accountName;

  const BankAccountCard({
    Key key,
    this.bankName,
    this.accountNumber,
    this.accountName,
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
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bankName,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 5),
                      fontWeight: FontWeight.w600,
                      color: ColorStyles.blue2,
                      height: SizeConfig.textSize(context, 0.7),
                    ),
                  ),
                  Text(
                    accountNumber,
                    style: GoogleFonts.workSans(
                      fontSize: SizeConfig.textSize(context, 6),
                      color: ColorStyles.grey2,
                      height: SizeConfig.textSize(context, 0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    accountName,
                    style: GoogleFonts.workSans(
                      height: SizeConfig.textSize(context, 0.7),
                      fontSize: SizeConfig.textSize(context, 5),
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.grey3,
                    ),
                  ),
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
