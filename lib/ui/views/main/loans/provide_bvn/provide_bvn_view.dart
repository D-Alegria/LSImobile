import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_form.dart';

class ProvideBVNView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Provide your BVN",
      form: Form(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.yMargin(context, 2.5),
            ),
            Text(
              "Please enter your BVN number to begin the loan application process",
              style: GoogleFonts.workSans(
                color: ColorStyles.light,
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.textSize(context, 4),
                height: SizeConfig.textSize(context, 0.4),
              ),
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 5),
            ),
            SharedTextFormField(labelText: "Bank Verification Number (BVN)"),
            Spacer(),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Check BVN",
              minWidth: SizeConfig.xMargin(context, 90),
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 2.5),
            ),
          ],
        ),
      ),
    );
  }
}
