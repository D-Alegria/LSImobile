import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_form.dart';

class ResidenceFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Residence",
      form: Form(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Type of residence"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Your current address"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "State"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Local government area"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Rent per year"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "How long have you lived there?"),
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
