import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/residence/view_model/residence_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';

class ResidenceFormView extends StatefulWidget {
  @override
  _ResidenceFormViewState createState() => _ResidenceFormViewState();
}

class _ResidenceFormViewState extends State<ResidenceFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<ResidenceBloc>().add(Init(_userDetailsRequest));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResidenceBloc, ResidenceState>(
      builder: (context, state) => LoanForm(
        title: "Residence",
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: ListView(
                  children: [
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.residences
                          .where(
                              (element) => element.id == state.typeOfResidence)
                          .first
                          .name,
                      items: state.residences.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Type of residence",
                      onChanged: (String value) {
                        var index;
                        state.residences.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<ResidenceBloc>()
                            .add(TypeOfResidenceChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Your current address",
                      initialValue: state.currentAddress,
                      onChanged: (value) => context
                          .bloc<ResidenceBloc>()
                          .add(CurrentAddressChanged(value)),
                      validator: (value) {
                        if (state.currentAddress.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.states
                          .where((element) => element.id == state.state)
                          .first
                          .name,
                      items: state.states.map((e) => e.name).toList(),
                      context: context,
                      labelText: "State",
                      onChanged: (String value) {
                        var index;
                        state.states.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context.bloc<ResidenceBloc>().add(StateChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.lgas
                          .where((element) => element.id == state.lga)
                          .first
                          .name,
                      items: state.lgas.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Local government area",
                      onChanged: (String value) {
                        var index;
                        state.lgas.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context.bloc<ResidenceBloc>().add(LgaChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "How long have you lived there?",
                      initialValue: state.stayPeriod,
                      onChanged: (value) => context
                          .bloc<ResidenceBloc>()
                          .add(StayPeriodChanged(value)),
                      validator: (value) {
                        if (state.stayPeriod.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () => context
                          .bloc<ResidenceBloc>()
                          .add(SubmitResidenceForm()),
                      color: ColorStyles.blue,
                      text: "Submit",
                      minWidth: SizeConfig.xMargin(context, 90),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                  ],
                ),
              ),
      ),
      listener: (context, state) => state.submitResidenceFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (l) => FlushbarHelper.createError(
                  message: l.message, duration: new Duration(seconds: 3))
              .show(context),
          (r) => context.navigator.pushLoanDetailsView(),
        ),
      ),
    );
  }
}
