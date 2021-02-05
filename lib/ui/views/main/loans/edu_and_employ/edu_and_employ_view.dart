import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/edu_and_employ_form.dart';

import '../widgets/loan_form.dart';

class EduAndEmployFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Employment",
      form: EduAndEmployForm(isEditProfile: false),
    );
  }
}
