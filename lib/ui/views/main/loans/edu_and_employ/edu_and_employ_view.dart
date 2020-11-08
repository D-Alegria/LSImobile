import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/edu_and_employ/view_model/edu_and_employ_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';

class EduAndEmployFormView extends StatefulWidget {
  @override
  _EduAndEmployFormViewState createState() => _EduAndEmployFormViewState();
}

class _EduAndEmployFormViewState extends State<EduAndEmployFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<EduAndEmployBloc>().add(Init(_userDetailsRequest));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EduAndEmployBloc, EduAndEmployState>(
      builder: (context, state) => LoanForm(
        title: "Education & Employment",
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
                      value: state.levelsOfEducation
                          .where(
                              (element) => element.id == state.levelOfEducation)
                          .first
                          .name,
                      items:
                          state.levelsOfEducation.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Level of education",
                      onChanged: (String value) {
                        var index;
                        state.levelsOfEducation.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<EduAndEmployBloc>()
                            .add(LevelOfEducationChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.employmentStatuses
                          .where(
                              (element) => element.id == state.employmentStatus)
                          .first
                          .name,
                      items:
                          state.employmentStatuses.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Employment status",
                      onChanged: (String value) {
                        var index;
                        state.employmentStatuses.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<EduAndEmployBloc>()
                            .add(EmploymentStatusChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedDropDownFormField<String>(
                      value: state.workSectors
                          .where((element) => element.id == state.workSector)
                          .first
                          .name,
                      items: state.workSectors.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Work Sector",
                      onChanged: (String value) {
                        var index;
                        state.workSectors.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<EduAndEmployBloc>()
                            .add(WorkSectorChanged(index));
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Employer name",
                      initialValue: state.employerName,
                      onChanged: (value) => context
                          .bloc<EduAndEmployBloc>()
                          .add(EmployerNameChanged(value)),
                      validator: (value) {
                        if (state.employerName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedDateTimeField(
                      label: "Start date",
                      initialValue: state.startDate,
                      onChange: (value) => context
                          .bloc<EduAndEmployBloc>()
                          .add(StartDateChanged(value)),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Monthly income",
                      initialValue: state.monthlyIncome,
                      onChanged: (value) => context
                          .bloc<EduAndEmployBloc>()
                          .add(MonthlyIncomeChanged(value)),
                      validator: (value) {
                        if (state.monthlyIncome.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () => context
                          .bloc<EduAndEmployBloc>()
                          .add(SubmitEduAndEmploy()),
                      color: ColorStyles.blue,
                      text: "Next",
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
          (r) => context.navigator.pushResidenceFormView(),
        ),
      ),
    );
  }
}
