import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/no_loan_view/no_loan_view.dart';

import '../active_loan/active_loan_view.dart';

class LoansView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<LoanViewCubit, bool>(
          builder: (context, state) {
            return state ? ActiveLoanView() : NoLoanView();
          },
        ),
      ),
    );
  }
}
