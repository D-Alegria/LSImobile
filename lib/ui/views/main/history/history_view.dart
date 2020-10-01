import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class HistoryView extends StatelessWidget {
  final String optionsIcon = "assets/svgs/icons/options_icon.svg";
  final String arrowUp = "assets/svgs/icons/arrow_up.svg";
  final String arrowDown = "assets/svgs/icons/arrow_down.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Transaction History",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
        actions: [
          ButtonTheme(
            minWidth: SizeConfig.xMargin(context, 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                optionsIcon,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return index % 2 == 0
                ? sharedInfoListTile(
                    icon: SvgPicture.asset(arrowDown),
                    context: context,
                    title: "Investment Plan",
                    subTitle: "Deposit",
                    trailingText: "N200,000",
                    trailingSubText: "3 days ago",
                  )
                : sharedInfoListTile(
                    icon: SvgPicture.asset(arrowUp),
                    context: context,
                    title: "Investment Plan",
                    subTitle: "Deposit",
                    trailingText: "N200,000",
                    trailingSubText: "3 days ago",
                    red: true,
                  );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
