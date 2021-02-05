import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/residence_form.dart';

import '../widgets/loan_form.dart';

class ResidenceFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Residence",
      form: ResidenceForm(isEditProfile: false),
    );
  }
}
