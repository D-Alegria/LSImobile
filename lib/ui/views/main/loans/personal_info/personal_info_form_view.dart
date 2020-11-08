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
import 'package:lsi_mobile/ui/views/main/loans/personal_info/view_model/personal_info_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';

class PersonalInfoFormView extends StatefulWidget {
  @override
  _PersonalInfoFormViewState createState() => _PersonalInfoFormViewState();
}

class _PersonalInfoFormViewState extends State<PersonalInfoFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<PersonalInfoBloc>().add(Init(_userDetailsRequest));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_userDetailsRequest);
    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      builder: (context, state) => LoanForm(
        title: "Personal Information",
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: ListView(
                  children: [
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "First name",
                      initialValue: state.firstName,
                      onChanged: (value) => context
                          .bloc<PersonalInfoBloc>()
                          .add(FirstNameChanged(value)),
                      validator: (value) {
                        if (state.firstName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      readOnly: true,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Last name",
                      initialValue: state.lastName,
                      onChanged: (value) => context
                          .bloc<PersonalInfoBloc>()
                          .add(LastNameChanged(value)),
                      validator: (value) {
                        if (state.lastName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      readOnly: true,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Email address",
                      initialValue: state.emailAddress,
                      onChanged: (value) => context
                          .bloc<PersonalInfoBloc>()
                          .add(EmailChanged(value)),
                      validator: (value) {
                        if (!state.emailAddress.isEmail)
                          return "Incorrect email";
                        return null;
                      },
                      readOnly: true,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Phone number",
                      initialValue: state.phoneNumber,
                      onChanged: (value) => context
                          .bloc<PersonalInfoBloc>()
                          .add(PhoneNumberChanged(value)),
                      validator: (value) {
                        if (state.phoneNumber.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedDateTimeField(
                      label: "Date of birth",
                      initialValue: state.dateOfBirth,
                      onChange: (value) => context
                          .bloc<PersonalInfoBloc>()
                          .add(DateOfBirthChanged(value)),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.genders
                          .where((element) => element.id == state.gender)
                          .first
                          .name,
                      items: state.genders.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Gender",
                      onChanged: (value) {
                        var index;
                        state.genders.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<PersonalInfoBloc>()
                            .add(GenderChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.maritalStatuses
                          .where((element) => element.id == state.maritalStatus)
                          .first
                          .name,
                      items: state.maritalStatuses.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Marital status",
                      onChanged: (value) {
                        var index;
                        state.maritalStatuses.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<PersonalInfoBloc>()
                            .add(MaritalStatusChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () => context
                          .bloc<PersonalInfoBloc>()
                          .add(SubmitPersonalInfo()),
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
          (r) {
            return context.navigator.pushEmergencyContactFormView();
          },
        ),
      ),
    );
  }
}
