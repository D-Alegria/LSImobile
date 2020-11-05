import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/emergency_contact/view_model/emergency_contact_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';

class EmergencyContactFormView extends StatefulWidget {
  @override
  _EmergencyContactFormViewState createState() =>
      _EmergencyContactFormViewState();
}

class _EmergencyContactFormViewState extends State<EmergencyContactFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<EmergencyContactBloc>().add(Init(_userDetailsRequest));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmergencyContactBloc, EmergencyContactState>(
      builder: (context, state) => LoanForm(
        title: "Emergency Contact",
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                child: ListView(
                  children: [
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "First name",
                      initialValue: state.firstName,
                      onChanged: (value) => context
                          .bloc<EmergencyContactBloc>()
                          .add(FirstNameChanged(value)),
                      validator: (value) {
                        if (state.firstName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Last name",
                      initialValue: state.lastName,
                      onChanged: (value) => context
                          .bloc<EmergencyContactBloc>()
                          .add(LastNameChanged(value)),
                      validator: (value) {
                        if (state.lastName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Email address",
                      initialValue: state.email,
                      onChanged: (value) => context
                          .bloc<EmergencyContactBloc>()
                          .add(EmailChanged(value)),
                      validator: (value) {
                        if (!state.email.isEmail) return "Incorrect email";
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Phone number",
                      initialValue: state.phone,
                      onChanged: (value) => context
                          .bloc<EmergencyContactBloc>()
                          .add(PhoneNumberChanged(value)),
                      validator: (value) {
                        if (state.phone.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.relationShips
                          .where((element) => element.id == state.relationShip)
                          .first
                          .name,
                      items: state.relationShips.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Relationship",
                      onChanged: (String value) {
                        var index;
                        state.relationShips.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<EmergencyContactBloc>()
                            .add(RelationShipChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () => context
                          .bloc<EmergencyContactBloc>()
                          .add(SubmitEmergencyContactForm()),
                      color: ColorStyles.blue,
                      text: "Submit",
                      minWidth: SizeConfig.xMargin(context, 90),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                  ],
                ),
              ),
      ),
      listener: (context, state) => state.submitFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (l) => FlushbarHelper.createError(
                  message: l.message, duration: new Duration(seconds: 3))
              .show(context),
          (r) => context.navigator.pushEduAndEmployFormView(),
        ),
      ),
    );
  }
}
