import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_form.dart';

class LoanDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Loan Details",
      form: Form(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(labelText: "How much do you want"),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(labelText: "For how long?"),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(labelText: "Reason for this loan"),
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
