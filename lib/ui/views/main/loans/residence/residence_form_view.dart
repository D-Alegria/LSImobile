import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/residence_form/residence_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/residence_form.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import '../widgets/loan_form.dart';

class ResidenceFormView extends StatefulWidget {
  @override
  _ResidenceFormViewState createState() => _ResidenceFormViewState();
}

class _ResidenceFormViewState extends State<ResidenceFormView> {
  UserDetailsRequest _userDetailsRequest;

  @override
  void initState() {
    context.bloc<UserProfileCubit>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => _userDetailsRequest = value.userData.userData.data,
        );
    context.bloc<ResidenceFormCubit>().init(_userDetailsRequest);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Residence",
      form: ResidenceForm(isEditProfile: false),
    );
  }
}
