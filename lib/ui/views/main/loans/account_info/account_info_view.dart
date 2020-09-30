import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_form.dart';

class AccountInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Account Information",
      form: Form(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(labelText: "Bank name"),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(labelText: "Account number"),
            Spacer(),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Submit",
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
