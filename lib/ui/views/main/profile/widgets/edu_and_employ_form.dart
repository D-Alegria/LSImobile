import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edu_and_employ_form/edu_and_employ_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/residence_form/residence_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class EduAndEmployForm extends StatelessWidget {
  final bool isEditProfile;

  const EduAndEmployForm({Key key, this.isEditProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EduAndEmployFormCubit, EduAndEmployFormState>(
      builder: (context, state) => state.isSubmitting
          ? sharedLoader()
          : Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.xMargin(context, 5),
                ),
                child: ListView(
                  children: [
                    SizedBox(height: SizeConfig.yMargin(context, 55.h)),
                    isEditProfile
                        ? sharedDropDownFormField<String>(
                            value: state.levelsOfEducation
                                .where((element) =>
                                    element.id == state.levelOfEducation)
                                .first
                                .name,
                            items: state.levelsOfEducation
                                .map((e) => e.name)
                                .toList(),
                            context: context,
                            labelText: "Level of education",
                            onChanged: (String value) {
                              var index;
                              state.levelsOfEducation.map((e) {
                                if (e.name == value) index = e.id;
                              }).toList();
                              context
                                  .bloc<EduAndEmployFormCubit>()
                                  .levelOfEducationChanged(index);
                            },
                          )
                        : Container(),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
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
                            .bloc<EduAndEmployFormCubit>()
                            .employmentStatusChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
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
                            .bloc<EduAndEmployFormCubit>()
                            .workSectorChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "Employer name",
                      initialValue: state.employerName,
                      onChanged: (value) => context
                          .bloc<EduAndEmployFormCubit>()
                          .employerNameChanged(value),
                      validator: (value) {
                        if (context
                            .bloc<EduAndEmployFormCubit>()
                            .state
                            .employerName
                            .isEmpty) return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedDateTimeField(
                      label: "Start date",
                      initialValue: state.startDate,
                      onChange: (value) => context
                          .bloc<EduAndEmployFormCubit>()
                          .startDateChanged(value),
                      pattern: "yyyy/MM",
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "Monthly income",
                      initialValue: state.monthlyIncome,
                      onChanged: (value) => context
                          .bloc<EduAndEmployFormCubit>()
                          .monthlyIncomeChanged(value),
                      validator: (value) {
                        if (context
                            .bloc<EduAndEmployFormCubit>()
                            .state
                            .monthlyIncome
                            .isEmpty) return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 35.h)),
                    isEditProfile
                        ? Padding(
                            padding: EdgeInsets.only(
                              right: SizeConfig.xMargin(context, 60),
                            ),
                            child: sharedOutlineRaisedButton(
                              context: context,
                              onPressed: () {
                                if (state.isEdited) {
                                  context
                                      .bloc<EduAndEmployFormCubit>()
                                      .submitEduAndEmploy();
                                  context
                                      .bloc<EditProfileCubit>()
                                      .profileSaved();
                                } else {
                                  showInfoSnackBar(context, "Edit a field");
                                }
                              },
                              color: ColorStyles.blue,
                              text: "Save",
                              minWidth: SizeConfig.xMargin(context, 30),
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.only(
                              top: SizeConfig.yMargin(context, 10),
                            ),
                            child: sharedRaisedButton(
                              context: context,
                              onPressed: () {
                                context
                                    .bloc<EduAndEmployFormCubit>()
                                    .submitEmploymentForm();
                                context
                                    .bloc<UserProfileCubit>()
                                    .getUserDetails();
                              },
                              color: ColorStyles.blue,
                              text: "Submit",
                              minWidth: SizeConfig.xMargin(context, 90),
                            ),
                          ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                  ],
                ),
              ),
            ),
      listener: (context, state) => state.submitFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => sharedErrorWidget(context, failure.message),
          (success) {
            if (!isEditProfile) {
              context.bloc<ResidenceFormCubit>().init(state.userDetails);
              return context.navigator.pushResidenceFormView();
            }
          },
        ),
      ),
    );
  }
}
