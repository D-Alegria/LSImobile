import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/emergency_contact_form/emergency_contact_form_cubit.dart';

class EmergenceContactForm extends StatelessWidget {
  final bool isEditProfile;

  const EmergenceContactForm({Key key, this.isEditProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmergencyContactFormCubit, EmergencyContactFormState>(
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
                    SizedBox(height: SizeConfig.yMargin(context, 6)),
                    SharedTextFormField(
                      labelText: "Full name",
                      initialValue: state.fullName,
                      onChanged: (value) => context
                          .bloc<EmergencyContactFormCubit>()
                          .fullNameChanged(value),
                      validator: (value) {
                        if (state.fullName.isEmpty)
                          return "Field name is required";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Email address",
                      initialValue: state.email,
                      onChanged: (value) => context
                          .bloc<EmergencyContactFormCubit>()
                          .emailChanged(value),
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
                          .bloc<EmergencyContactFormCubit>()
                          .phoneNumberChanged(value),
                      validator: (value) {
                        if (state.phone.isEmpty) return "Field name is required";
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
                            .bloc<EmergencyContactFormCubit>()
                            .relationShipChanged(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
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
                                      .bloc<EmergencyContactFormCubit>()
                                      .submitEmergencyContactForm(
                                          isEditProfile: true);
                                  context.bloc<EditProfileCubit>().profileSaved();
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
                              top: SizeConfig.yMargin(context, 17),
                            ),
                            child: sharedRaisedButton(
                              context: context,
                              onPressed: () => context
                                  .bloc<EmergencyContactFormCubit>()
                                  .submitEmergencyContactForm(
                                      isEditProfile: false),
                              color: ColorStyles.blue,
                              text: "Submit",
                              minWidth: SizeConfig.xMargin(context, 90),
                            ),
                          ),
                    SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                  ],
                ),
              ),
            ),
      listener: (context, state) => state.submitFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => sharedErrorWidget(context, failure.message),
          (success) {
            if (!isEditProfile)
              return context.navigator.pushEduAndEmployFormView();
          },
        ),
      ),
    );
  }
}
