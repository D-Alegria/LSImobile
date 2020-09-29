import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import 'loan_form.dart';

class PersonalInfoFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoanForm(
        height: 55,
        title: "Personal Information",
        form: Form(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "First name"),
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "Last name"),
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "Gender"),
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "Email address"),
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "Phone number"),
              SizedBox(
                height: SizeConfig.yMargin(context, 2),
              ),
              SharedTextFormField(labelText: "Date of birth"),
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
      ),
    );
  }
}
