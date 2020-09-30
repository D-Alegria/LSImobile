import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_product_box.dart';

class LoanProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List products = [
      LoanProductBox(
        title: "I CONSUME MINI",
        subText: "N20,000 - N50,000",
        duration: "3",
        durationColor: ColorStyles.yellow,
        gradient: ColorStyles.greenGradient,
        borderBoxColor: ColorStyles.green3,
        action: () => context.navigator.pushProvideBVNView(),
      ),
      LoanProductBox(
        title: "I CONSUME MIDI",
        subText: "N51,000 - N100,000",
        duration: "4",
        durationColor: ColorStyles.yellow,
        gradient: ColorStyles.primaryGradient,
        borderBoxColor: ColorStyles.blue3,
        action: () => context.navigator.pushProvideBVNView(),
      ),
      LoanProductBox(
        title: "I CONSUME MAXI",
        subText: "N101,000 - N200,000",
        duration: "6",
        durationColor: ColorStyles.white,
        gradient: ColorStyles.yellowGradient,
        borderBoxColor: ColorStyles.extraLight,
        action: () => context.navigator.pushProvideBVNView(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: ColorStyles.dark),
        elevation: 0,
        centerTitle: false,
        backgroundColor: ColorStyles.white,
        title: Text(
          "Loan Products",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: SizeConfig.yMargin(context, 3.5),
          ),
          itemBuilder: (context, index) {
            return products[index];
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}