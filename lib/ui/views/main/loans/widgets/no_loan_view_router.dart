import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/views/main/loans/view_model/loan_product/loan_product_cubit.dart';

class NoLoanViewRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoanProductCubit>()..getLoanProducts(),
        ),
      ],
      child: Scaffold(
        body: ExtendedNavigator(
          router: NoLoanViewRouterRouter(),
        ),
      ),
    );
  }
}
