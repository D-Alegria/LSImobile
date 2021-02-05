import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/edu_and_employ_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/emergence_contact_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/personal_info_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/residence_form.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key key}) : super(key: key);

  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(this),
      child: BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) => ProfileForm(
          tabController: state.tabController,
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
            controller: state.tabController,
          ),
        ),
      ),
    );
  }
}
