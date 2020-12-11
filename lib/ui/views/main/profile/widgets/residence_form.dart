import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/residence_form/residence_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class ResidenceForm extends StatelessWidget {
  final bool isEditProfile;

  const ResidenceForm({Key key, this.isEditProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResidenceFormCubit, ResidenceFormState>(
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
                            .bloc<ResidenceFormCubit>()
                            .typeOfResidenceChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "Your current address",
                      initialValue: state.currentAddress,
                      onChanged: (value) => context
                          .bloc<ResidenceFormCubit>()
                          .currentAddressChanged(value),
                      validator: (value) {
                        if (context
                            .bloc<ResidenceFormCubit>()
                            .state
                            .currentAddress
                            .isEmpty) return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
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
                        context.bloc<ResidenceFormCubit>().stateChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
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
                        context.bloc<ResidenceFormCubit>().lgaChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "How long have you lived there?",
                      initialValue: state.stayPeriod,
                      onChanged: (value) => context
                          .bloc<ResidenceFormCubit>()
                          .stayPeriodChanged(value),
                      validator: (value) {
                        if (context
                            .bloc<ResidenceFormCubit>()
                            .state
                            .stayPeriod
                            .isEmpty) return "Field name is required";
                        return null;
                      },
                      keyboardType: TextInputType.phone,
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
                                      .bloc<ResidenceFormCubit>()
                                      .submitResidenceForm(isEditProfile: true);
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
                              top: SizeConfig.yMargin(context, 100.h),
                            ),
                            child: sharedRaisedButton(
                              context: context,
                              onPressed: () async {
                                await context
                                    .bloc<ResidenceFormCubit>()
                                    .submitResidenceForm(isEditProfile: false);
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
      listener: (context, state) => state.submitResidenceFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => sharedErrorWidget(context, failure.message),
          (success) {
            if (!isEditProfile) {
              context.bloc<LoanDetailsBloc>().add(Init(state.userDetails));
              return context.navigator.pushLoanDetailsView();
            }
          },
        ),
      ),
    );
  }
}
