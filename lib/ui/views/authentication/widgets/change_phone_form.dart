import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class ChangePhoneForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: SizeConfig.yMargin(context, 42),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: Form(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.xMargin(context, 1),
              ),
              child: RichText(
                text: TextSpan(
                  text: "Change phone number",
                  style: GoogleFonts.workSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 4),
                    height: SizeConfig.textSize(context, 0.4),
                  ),
                  children: [
                    TextSpan(
                      text: "\nEnter your new phone number below",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(
              labelText: "Phone number",
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 4),
            ),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Change",
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 1),
            ),
            sharedOptionFlatButton(
              context: context,
              firstText: "",
              secondText: "Cancel",
              action: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
