import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/residence_form_view.dart';

class LoansView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResidenceFormView(),
      ),
    );
  }
}
