import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class NoLoanView extends StatelessWidget {
  const NoLoanView({
    Key key,
  }) : super(key: key);

  final String instantMoney = "assets/images/apply_loan.png";
  final String optionsIcon = "assets/svgs/icons/options_icon.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Loans",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
        actions: [
          sharedIconButton(
            context: context,
            onPressed: () {},
            icon: SvgPicture.asset(optionsIcon),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
          vertical: SizeConfig.yMargin(context, 8),
        ),
        width: SizeConfig.xMargin(context, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              instantMoney,
              fit: BoxFit.fitHeight,
            ),
            sharedRaisedButton(
              context: context,
              text: "Apply for a loan",
              color: ColorStyles.orange,
              onPressed: () => context.navigator.pushLoanProductView(),
              minWidth: SizeConfig.xMargin(context, 70),
            ),
          ],
        ),
      ),
    );
  }
}
