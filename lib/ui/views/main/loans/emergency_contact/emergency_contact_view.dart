import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/emergence_contact_form.dart';

import '../widgets/loan_form.dart';

class EmergencyContactFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoanForm(
      title: "Emergency Contact",
      form: EmergenceContactForm(isEditProfile: false),
    );
  }
}
