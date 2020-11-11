import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';

class LoanDetailsView extends StatefulWidget {
  @override
  _LoanDetailsViewState createState() => _LoanDetailsViewState();
}

class _LoanDetailsViewState extends State<LoanDetailsView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<LoanDetailsBloc>().add(Init(_userDetailsRequest));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoanDetailsBloc, LoanDetailsState>(
      builder: (context, state) => LoanForm(
        title: "Loan Details",
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: ListView(
                  children: [
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    SharedTextFormField(
                      labelText: "How much do you want",
                      initialValue: state.amount,
                      onChanged: (value) => context
                          .bloc<LoanDetailsBloc>()
                          .add(AmountChanged(value)),
                      validator: (value) {
                        if (state.amount.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    SharedTextFormField(
                      labelText: "For how long?",
                      initialValue: state.time,
                      onChanged: (value) => context
                          .bloc<LoanDetailsBloc>()
                          .add(TimeChanged(value)),
                      validator: (value) {
                        if (state.time.isEmpty) return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    sharedDropDownFormField<String>(
                      value: state.reasons
                          .where((element) => element.id == state.reason)
                          .first
                          .name,
                      items: state.reasons.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Reason for this loan",
                      onChanged: (String value) {
                        var index;
                        state.reasons.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<LoanDetailsBloc>()
                            .add(ReasonChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 28)),
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
          (l) => FlushbarHelper.createError(
                  message: l.message, duration: new Duration(seconds: 3))
              .show(context),
          (r) => context.navigator.pushAccountInfoView(),
        ),
      ),
    );
  }
}
