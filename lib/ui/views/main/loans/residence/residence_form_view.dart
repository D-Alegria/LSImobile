import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/residence/view_model/residence_bloc.dart';

import '../widgets/loan_form.dart';

class ResidenceFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResidenceBloc(),
      child: BlocConsumer<ResidenceBloc, ResidenceState>(
        builder: (context, state) => LoanForm(
          title: "Residence",
          form: Form(
            child: ListView(
              children: [
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Type of residence",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                SharedTextFormField(labelText: "Your current address"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "State",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Local government area",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                SharedTextFormField(labelText: "Rent per year"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                SharedTextFormField(
                    labelText: "How long have you lived there?"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () =>
                      context.bloc<ResidenceBloc>().add(SubmitResidenceForm()),
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
        listener: (context, state) =>
            state.submitResidenceFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => context.navigator.pushLoanDetailsView(),
          ),
        ),
      ),
    );
  }
}
