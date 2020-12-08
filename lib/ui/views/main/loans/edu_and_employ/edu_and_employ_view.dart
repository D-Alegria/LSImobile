import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edu_and_employ_form/edu_and_employ_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/edu_and_employ_form.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import '../widgets/loan_form.dart';

class EduAndEmployFormView extends StatefulWidget {
  @override
  _EduAndEmployFormViewState createState() => _EduAndEmployFormViewState();
}

class _EduAndEmployFormViewState extends State<EduAndEmployFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    _userDetailsRequest =
        context.bloc<UserProfileCubit>().state.userData.userData.data;
    context.bloc<EduAndEmployFormCubit>().init(_userDetailsRequest);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Employment",
      form: EduAndEmployForm(isEditProfile: false),
    );
  }
}
