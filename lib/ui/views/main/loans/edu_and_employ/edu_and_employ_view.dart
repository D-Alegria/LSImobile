import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/edu_and_employ/view_model/edu_and_employ_bloc.dart';

import '../widgets/loan_form.dart';

class EduAndEmployFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EduAndEmployBloc(),
      child: BlocConsumer<EduAndEmployBloc, EduAndEmployState>(
        builder: (context, state) => LoanForm(
          title: "Education & Employment",
          form: Form(
            child: ListView(
              children: [
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Level of education",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Employment status",
                  onChanged: (String value) {},
                ),
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
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () => context
                      .bloc<EduAndEmployBloc>()
                      .add(SubmitEduAndEmploy()),
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
        ),
        listener: (context, state) => state.submitFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => context.navigator.pushResidenceFormView(),
          ),
        ),
      ),
    );
  }
}
