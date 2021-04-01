import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/atm_card.dart';

class BankAccountCard extends StatelessWidget {
  final String bankName;
  final String accountNumber;
  final String accountName;
  final Function onTap;

  const BankAccountCard({
    Key key,
    this.bankName,
    this.accountNumber,
    this.accountName,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SharedCardBackground(
      child: Container(
        alignment: Alignment.center,
        child: sharedContainer(
          onTap: onTap,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bankName,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 18.tx),
                        fontWeight: FontWeight.w600,
                        color: ColorStyles.blue2,
                      ),
                    ),
                    Text(
                      accountNumber,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 22.tx),
                        color: ColorStyles.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      accountName.capitalize,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 18.tx),
                        fontWeight: FontWeight.w400,
                        color: ColorStyles.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
