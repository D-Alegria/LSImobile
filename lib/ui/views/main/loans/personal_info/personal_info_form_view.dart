import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/personal_info_form.dart';

import '../widgets/loan_form.dart';

class PersonalInfoFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Personal Information",
      form: PersonalInfoForm(isEditProfile: false),
    );
  }
}
