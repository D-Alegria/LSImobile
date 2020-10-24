import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/emergency_contact/view_model/emergency_contact_bloc.dart';

import '../widgets/loan_form.dart';

class EmergencyContactFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmergencyContactBloc(),
      child: BlocConsumer<EmergencyContactBloc, EmergencyContactState>(
        builder: (context, state) => LoanForm(
          title: "Emergency Contact",
          form: Form(
            child: ListView(
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

                SharedTextFormField(labelText: "Email address"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                SharedTextFormField(labelText: "Phone number"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                SharedTextFormField(labelText: "Date of birth"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["Male", "Female", "Other"],
                  context: context,
                  labelText: "Relationship",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () => context
                      .bloc<EmergencyContactBloc>()
                      .add(SubmitEmergencyContactForm()),
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
        listener: (context, state) => state.submitFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => context.navigator.pushEduAndEmployFormView(),
          ),
        ),
      ),
    );
  }
}