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
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';

class EditProfileView extends StatefulWidget {
  final UserDetailsRequest userDetails;

  const EditProfileView({Key key, this.userDetails}) : super(key: key);

  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    context
        .bloc<EditProfileBloc>()
        .add(EditProfileEvent.init(widget.userDetails));
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<bool> _goBack(EditProfileState state, BuildContext context) {
    if (state.isSaved) {
      context.navigator.pushAndRemoveUntil(
        Routes.mainView,
        (route) => false,
        arguments: MainViewArguments(
          pageNumber: 4,
        ),
      );
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () => _goBack(state, context),
        child: ProfileForm(
          tabController: _tabController,
          title: "Edit Profile",
          tabs: ["Personal Information", "Education and Employment"],
          form: TabBarView(
            children: [
              state.isLoading
                  ? sharedLoader()
                  : buildPersonalInfoForm(state, context),
              state.isLoading
                  ? sharedLoader()
                  : buildEduAndEmployForm(state, context),
            ],
            controller: _tabController,
          ),
        ),
      ),
      listener: (context, state) => null,
    );
  }

  Form buildEduAndEmployForm(EditProfileState state, BuildContext context) {
    return Form(
      autovalidateMode: state.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: ListView(
        children: [
          SizedBox(height: SizeConfig.yMargin(context, 6)),
          sharedDropDownFormField<String>(
            value: state.levelsOfEducation
                .where((element) => element.id == state.levelOfEducation)
                .first
                .name,
            items: state.levelsOfEducation.map((e) => e.name).toList(),
            context: context,
            labelText: "Level of education",
            onChanged: (String value) {
              var index;
              state.levelsOfEducation.map((e) {
                if (e.name == value) index = e.id;
              }).toList();
              context
                  .bloc<EditProfileBloc>()
                  .add(LevelOfEducationChanged(index));
            },
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          sharedDropDownFormField<String>(
            value: state.employmentStatuses
                .where((element) => element.id == state.employmentStatus)
                .first
                .name,
            items: state.employmentStatuses.map((e) => e.name).toList(),
            context: context,
            labelText: "Employment status",
            onChanged: (String value) {
              var index;
              state.employmentStatuses.map((e) {
                if (e.name == value) index = e.id;
              }).toList();
              context
                  .bloc<EditProfileBloc>()
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
              context.bloc<EditProfileBloc>().add(WorkSectorChanged(index));
            },
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Employer name",
            initialValue: state.employerName,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(EmployerNameChanged(value)),
            validator: (value) {
              if (state.employerName.isEmpty) return "Field name is required";
              return null;
            },
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Start date",
            initialValue: state.startDate,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(StartDateChanged(value)),
            validator: (value) {
              if (state.startDate.isEmpty) return "Field name is required";
              return null;
            },
            keyboardType: TextInputType.datetime,
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Monthly income",
            initialValue: state.monthlyIncome,
            onChanged: (value) => context
                .bloc<EditProfileBloc>()
                .add(MonthlyIncomeChanged(value)),
            validator: (value) {
              if (state.monthlyIncome.isEmpty) return "Field name is required";
              return null;
            },
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          Padding(
            padding: EdgeInsets.only(
              right: SizeConfig.xMargin(context, 60),
            ),
            child: sharedOutlineRaisedButton(
              context: context,
              onPressed: () {
                if (state.isEdited) {
                  context.bloc<EditProfileBloc>().add(SubmitEduAndEmpForm());
                } else {
                  FlushbarHelper.createInformation(
                    message: "Edit a field",
                    duration: new Duration(seconds: 3),
                  ).show(context);
                }
              },
              color: ColorStyles.blue,
              text: "Save",
              minWidth: SizeConfig.xMargin(context, 30),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2.5)),
        ],
      ),
    );
  }

  Widget buildPersonalInfoForm(EditProfileState state, BuildContext context) {
    return Form(
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
                context.bloc<EditProfileBloc>().add(FirstNameChanged(value)),
            validator: (value) {
              if (state.firstName.isEmpty) return "Field name is required";
              return null;
            },
            readOnly: true,
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Last name",
            initialValue: state.lastName,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(LastNameChanged(value)),
            validator: (value) {
              if (state.lastName.isEmpty) return "Field name is required";
              return null;
            },
            readOnly: true,
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
              context.bloc<EditProfileBloc>().add(GenderChanged(index));
            },
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Email address",
            initialValue: state.emailAddress,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(EmailChanged(value)),
            validator: (value) {
              if (!state.emailAddress.isEmail) return "Incorrect email";
              return null;
            },
            readOnly: true,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Phone number",
            initialValue: state.phoneNumber,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(PhoneNumberChanged(value)),
            validator: (value) {
              if (state.phoneNumber.isEmpty) return "Field name is required";
              return null;
            },
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2)),
          SharedTextFormField(
            labelText: "Date of birth",
            initialValue: state.dateOfBirth,
            onChanged: (value) =>
                context.bloc<EditProfileBloc>().add(DateOfBirthChanged(value)),
            validator: (value) {
              if (state.dateOfBirth.isEmpty) return "Field name is required";
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
                if (state.isEdited) {
                  context.bloc<EditProfileBloc>().add(SubmitEditProfileForm());
                } else {
                  FlushbarHelper.createInformation(
                    message: "Edit a field",
                    duration: new Duration(seconds: 3),
                  ).show(context);
                }
              },
              color: ColorStyles.blue,
              text: "Save",
              minWidth: SizeConfig.xMargin(context, 30),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 2.5)),
        ],
      ),
    );
  }
}
