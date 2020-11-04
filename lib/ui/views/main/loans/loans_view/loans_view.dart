import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/views/main/loans/active_loan/active_loan_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/no_loan_view/no_loan_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/view_model/loan_view/loan_view_cubit.dart';

class LoansView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoanViewCubit>()..checkActiveLoans(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<LoanViewCubit, LoanViewState>(
            builder: (context, state) => state.map(
              initial: (e) => Container(),
              loading: (e) => sharedLoader(),
              loaded: (e) =>
                  e.isLoanAvailable ? ActiveLoanView() : NoLoanView(),
              error: (e) => Container(
                child: Center(
                  child: Text(e.message),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
