import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/emergency_contact_form/emergency_contact_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/emergence_contact_form.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import '../widgets/loan_form.dart';

class EmergencyContactFormView extends StatefulWidget {
  @override
  _EmergencyContactFormViewState createState() =>
      _EmergencyContactFormViewState();
}

class _EmergencyContactFormViewState extends State<EmergencyContactFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    _userDetailsRequest =  context.bloc<UserProfileCubit>().state.userData.userData.data;
    context.bloc<EmergencyContactFormCubit>().init(_userDetailsRequest);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Emergency Contact",
      form: EmergenceContactForm(isEditProfile: false),
    );
  }
}
