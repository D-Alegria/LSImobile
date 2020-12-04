import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edu_and_employ_form/edu_and_employ_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/emergency_contact_form/emergency_contact_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/personal_info_form/personal_info_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/residence_form/residence_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/edu_and_employ_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/emergence_contact_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/personal_info_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/residence_form.dart';

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
    context.bloc<PersonalInfoFormCubit>().init(widget.userDetails);
    context.bloc<EmergencyContactFormCubit>().init(widget.userDetails);
    context.bloc<EduAndEmployFormCubit>().init(widget.userDetails);
    context.bloc<ResidenceFormCubit>().init(widget.userDetails);
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<bool> _goBack(EditProfileState state, BuildContext context) {
    if (state.isSaved) {
      context.bloc<EditProfileCubit>().reset();
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
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () => _goBack(state, context),
        child: ProfileForm(
          tabController: _tabController,
          title: "Edit Profile",
          tabs: [
            "Personal Information",
            "Emergency contact",
            "Education and Employment",
            "Residence",
          ],
          isScrollable: true,
          form: TabBarView(
            children: [
              PersonalInfoForm(isEditProfile: true),
              EmergenceContactForm(isEditProfile: true),
              EduAndEmployForm(isEditProfile: true),
              ResidenceForm(isEditProfile: true),
            ],
            controller: _tabController,
          ),
        ),
      ),
      listener: (context, state) => null,
    );
  }
}
