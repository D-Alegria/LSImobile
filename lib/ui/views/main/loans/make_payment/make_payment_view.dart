import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/change_amount_form.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/pay_with_existing_card_form.dart';

class MakePaymentView extends StatelessWidget {
  final payWithExiCard = "assets/svgs/pay_with_exi_card.svg";

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
        title: Text(
          "Make Payment",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Column(
          children: [
            sharedContainer(
              color: ColorStyles.white,
              height: SizeConfig.yMargin(context, 22),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "₦120,000",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.textSize(context, 9),
                      color: ColorStyles.primaryBlue,
                    ),
                  ),
                  FlatButton(
                    onPressed: ()=> _showForm(ChangeAmountForm()),
                    child: Text(
                      "Change amount",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textSize(context, 5.5),
                        color: ColorStyles.blue2,
                      ),
                    ),
                  )
                ],
              ),
            ),
            sharedInfoButton(
              context: context,
              onTap: ()=> _showForm(PayWithExistingCardForm()),
              icon: SvgPicture.asset(
                payWithExiCard,
                height: SizeConfig.textSize(context, 8),
              ),
              text: "Pay with existing card",
              background: Colors.transparent,
              colorIcon: false,
            ),
            Divider(
              color: ColorStyles.black.withOpacity(0.12),
              thickness: 1,
              height: SizeConfig.yMargin(context, 4),
            ),
            sharedInfoButton(
              context: context,
              icon: Icon(
                Icons.credit_card,
                color: ColorStyles.blue,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Pay with new card",
              background: Colors.transparent,
              colorIcon: false,
            ),
            Divider(
              color: ColorStyles.black.withOpacity(0.12),
              thickness: 1,
              height: SizeConfig.yMargin(context, 4),
            ),
            sharedInfoButton(
              onTap: ()=> context.navigator.pop(),
              context: context,
              icon: Icon(
                Icons.close_rounded,
                color: ColorStyles.red,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Cancel",
              background: Colors.transparent,
              colorIcon: false,
            ),
          ],
        ),
      ),
    );
  }
}
