import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/views/main/investment/my_investment/my_investment_view.dart';
import 'package:lsi_mobile/ui/views/main/investment/no_investment/no_investment_view.dart';

import 'view_model/investment_view_cubit.dart';

class InvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InvestmentViewCubit, InvestmentViewState>(
        builder: (context, state) => state.map(
          initial: (e) => Container(),
          loading: (e) => Container(),
          loaded: (e) => e.isInvestmentAvailable
              ? NewInvestmentView()
              : NoInvestmentView(),
          error: (e) => Container(),
        ),
      ),
    );
  }
}
