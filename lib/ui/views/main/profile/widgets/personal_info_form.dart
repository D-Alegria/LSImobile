import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/emergency_contact_form/emergency_contact_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/personal_info_form/personal_info_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class PersonalInfoForm extends StatelessWidget {
  final bool isEditProfile;

  const PersonalInfoForm({Key key, this.isEditProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonalInfoFormCubit, PersonalInfoFormState>(
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
                    SharedTextFormField(
                      labelText: "Full name",
                      initialValue: state.fullName,
                      onChanged: (value) => context
                          .bloc<PersonalInfoFormCubit>()
                          .fullNameChanged(value),
                      validator: (value) {
                        if (context
                            .bloc<PersonalInfoFormCubit>()
                            .state
                            .fullName
                            .isEmpty) return "Field name is required";
                        return null;
                      },
                      readOnly: true,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "Email address",
                      initialValue: state.emailAddress,
                      onChanged: (value) => context
                          .bloc<PersonalInfoFormCubit>()
                          .emailChanged(value),
                      validator: (value) {
                        if (!context
                            .bloc<PersonalInfoFormCubit>()
                            .state
                            .emailAddress
                            .isEmail) return "Incorrect email";
                        return null;
                      },
                      readOnly: true,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedTextFormField(
                      labelText: "Phone number",
                      initialValue: state.phoneNumber,
                      onChanged: (value) => context
                          .bloc<PersonalInfoFormCubit>()
                          .phoneNumberChanged(value),
                      validator: (value) {
                        if (!context
                            .bloc<PersonalInfoFormCubit>()
                            .state
                            .phoneNumber
                            .isPhoneNo) return "Invalid Phone Number";
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    SharedDateTimeField(
                      pattern: "yyyy-MM-dd",
                      label: "Date of birth",
                      initialValue: state.dateOfBirth,
                      onChange: (value) => context
                          .bloc<PersonalInfoFormCubit>()
                          .dateOfBirthChanged(value),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
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
                            .bloc<PersonalInfoFormCubit>()
                            .genderChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 25.h)),
                    sharedDropDownFormField<String>(
                      value: state.maritalStatuses
                          .where((element) => element.id == state.maritalStatus)
                          .first
                          .name,
                      items: state.maritalStatuses.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Marital Status",
                      onChanged: (value) {
                        var index;
                        state.maritalStatuses.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<PersonalInfoFormCubit>()
                            .maritalStatusChanged(index);
                      },
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
                                      .bloc<PersonalInfoFormCubit>()
                                      .submitPersonalInfoForm(
                                          isEditProfile: true);
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
                              top: SizeConfig.yMargin(context, 3),
                            ),
                            child: sharedRaisedButton(
                              context: context,
                              onPressed: () async {
                                await context
                                    .bloc<PersonalInfoFormCubit>()
                                    .submitPersonalInfoForm(
                                        isEditProfile: false);
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
              context.bloc<EmergencyContactFormCubit>().init(state.userDetails);
              return context.navigator.pushEmergencyContactFormView();
            }
          },
        ),
      ),
    );
  }
}
