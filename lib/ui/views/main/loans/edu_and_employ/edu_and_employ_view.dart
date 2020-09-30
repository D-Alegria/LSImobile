import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import '../widgets/loan_form.dart';

class EduAndEmployFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Education & Employment",
      form: Form(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Level of education"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Employment status"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Employer name"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Start date"),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            SharedTextFormField(labelText: "Monthly income"),
            Spacer(),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Next",
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
