import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/personal_info_form/personal_info_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/personal_info_form.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import '../widgets/loan_form.dart';

class PersonalInfoFormView extends StatefulWidget {
  @override
  _PersonalInfoFormViewState createState() => _PersonalInfoFormViewState();
}

class _PersonalInfoFormViewState extends State<PersonalInfoFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    _userDetailsRequest =  context.bloc<UserProfileCubit>().state.userData.userData.data;
    context.bloc<PersonalInfoFormCubit>().init(_userDetailsRequest);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Personal Information",
      form: PersonalInfoForm(isEditProfile: false),
    );
  }
}
