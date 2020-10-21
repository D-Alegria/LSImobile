import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class InvestmentPlanView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showForm(Widget form) {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: ColorStyles.black.withOpacity(0.2),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: form,
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            Text(
              "Investment",
              style: GoogleFonts.workSans(
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            sharedContainer(
              gradient: ColorStyles.primaryGradient,
              height: SizeConfig.yMargin(context, 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Balance",
                          children: [
                            TextSpan(text: "₦200,000"),
                          ],
                        ),
                      ),
                      sharedSmallBadge(
                        context: context,
                        text: "Active",
                        indicatorColor: ColorStyles.green1,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Rate",
                          children: [
                            TextSpan(text: "14%"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            Row(
              children: [
                Container(
                  child: Icon(Icons.subdirectory_arrow_right_rounded),
                  decoration: BoxDecoration(
                    color: ColorStyles.orange,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
