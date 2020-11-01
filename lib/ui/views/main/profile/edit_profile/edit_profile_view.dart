import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<EditProfileBloc>()
        ..add(EditProfileEvent.init()),
      child: BlocConsumer<EditProfileBloc, EditProfileState>(
        builder: (context, state) =>
            ProfileForm(
              tabController: _tabController,
              title: "Edit Profile",
              tabs: ["Personal Information", "Education and Employment"],
              form: TabBarView(
                children: [
                  state.isLoading
                      ? Container()
                      : Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: ListView(
                      children: [
                        SizedBox(height: SizeConfig.yMargin(context, 6)),
                        SharedTextFormField(
                          labelText: "First name",
                          initialValue: state.firstName,
                          onChanged: (value) =>
                              context
                                  .bloc<EditProfileBloc>()
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
                          onChanged: (value) =>
                              context
                                  .bloc<EditProfileBloc>()
                                  .add(LastNameChanged(value)),
                          validator: (value) {
                            if (state.lastName.isEmpty)
                              return "Field name is required";
                            return null;
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        sharedDropDownFormField<String>(
                          value:
                          state.genders
                              .map((e) => e.name)
                              .toList()
                              .first,
                          items: state.genders.map((e) => e.name).toList(),
                          context: context,
                          labelText: "Gender",
                          onChanged: (value) {
                            var index;
                            state.genders.map((e) {
                              if (e.name == value) index = e.id;
                            }).toList();
                            print(index);
                            context
                                .bloc<EditProfileBloc>()
                                .add(GenderChanged(index));
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        SharedTextFormField(
                          labelText: "Email address",
                          initialValue: state.emailAddress,
                          onChanged: (value) =>
                              context
                                  .bloc<EditProfileBloc>()
                                  .add(EmailChanged(value)),
                          validator: (value) {
                            if (!state.emailAddress.isEmail)
                              return "Incorrect email";
                            return null;
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        SharedTextFormField(
                          labelText: "Phone number",
                          initialValue: state.phoneNumber,
                          onChanged: (value) =>
                              context
                                  .bloc<EditProfileBloc>()
                                  .add(PhoneNumberChanged(value)),
                          validator: (value) {
                            if (state.phoneNumber.isEmpty)
                              return "Field name is required";
                            return null;
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        SharedTextFormField(
                          labelText: "Date of birth",
                          initialValue: state.dateOfBirth,
                          onChanged: (value) =>
                              context
                                  .bloc<EditProfileBloc>()
                                  .add(DateOfBirthChanged(value)),
                          validator: (value) {
                            if (state.dateOfBirth.isEmpty)
                              return "Field name is required";
                            return null;
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        Padding(
                          padding: EdgeInsets.only(
                            right: SizeConfig.xMargin(context, 60),
                          ),
                          child: sharedOutlineRaisedButton(
                            context: context,
                            onPressed: () {
                              print("SubmitEditProfileForm");
                              context
                                  .bloc<EditProfileBloc>()
                                  .add(SubmitEditProfileForm());
                            },
                            color: ColorStyles.blue,
                            text: "Save",
                            minWidth: SizeConfig.xMargin(context, 30),
                          ),
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                      ],
                    ),
                  ),
                  state.isLoading
                      ? Container()
                      : ListView(
                    children: [
                      SizedBox(height: SizeConfig.yMargin(context, 6)),
                      sharedDropDownFormField<String>(
                        items: ["A", "B", "C"],
                        context: context,
                        labelText: "Level of education",
                        onChanged: (String value) {},
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      sharedDropDownFormField<String>(
                        items: ["A", "B", "C"],
                        context: context,
                        labelText: "Employment status",
                        onChanged: (String value) {},
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      SharedTextFormField(labelText: "Employer name"),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      SharedTextFormField(labelText: "Start date"),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      SharedTextFormField(labelText: "Monthly income"),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      Padding(
                        padding: EdgeInsets.only(
                          right: SizeConfig.xMargin(context, 60),
                        ),
                        child: sharedOutlineRaisedButton(
                          context: context,
                          onPressed: () => null,
                          color: ColorStyles.blue,
                          text: "Save",
                          minWidth: SizeConfig.xMargin(context, 30),
                        ),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                    ],
                  ),
                ],
                controller: _tabController,
              ),
            ),
        listener: (context, state) => null,
      ),
    );
  }
}
