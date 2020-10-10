import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';

import '../widgets/loan_form.dart';

class LoanDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoanDetailsBloc(),
      child: BlocConsumer<LoanDetailsBloc, LoanDetailsState>(
        builder: (context, state) => LoanForm(
          title: "Loan Details",
          form: Form(
            child: ListView(
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
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Reason for this loan",
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () => context
                      .bloc<LoanDetailsBloc>()
                      .add(SubmitLoanDetailsForm()),
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
            state.submitLoanDetailsFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => context.navigator.pushAccountInfoView(),
          ),
        ),
      ),
    );
  }
}
