import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/views/main/loans/active_loan/active_loan_view.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/no_loan_view/no_loan_view.dart';

class LoansView extends StatefulWidget {
  @override
  _LoansViewState createState() => _LoansViewState();
}

class _LoansViewState extends State<LoansView> {
  @override
  void initState() {
    context.bloc<LoanViewCubit>().checkActiveLoans();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<LoanViewCubit, LoanViewState>(
          builder: (context, state) => state.map(
            initial: (e) => Container(),
            loading: (e) => sharedLoader(),
            loaded: (e) => e.isLoanAvailable ? ActiveLoanView() : NoLoanView(),
            error: (e) => sharedErrorWidget(context, e.message),
          ),
        ),
      ),
    );
  }
}
