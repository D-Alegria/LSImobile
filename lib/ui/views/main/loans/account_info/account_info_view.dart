import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/account_info/view_model/account_info_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';

import '../widgets/loan_form.dart';

class AccountInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountInfoBloc(),
        ),
        BlocProvider(
          create: (context) => LoanViewCubit(),
        ),
      ],
      child: BlocConsumer<AccountInfoBloc, AccountInfoState>(
        builder: (context, state) => LoanForm(
          title: "Account Information",
          form: Form(
            child: ListView(
              children: [
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(labelText: "Bank name"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(labelText: "Account number"),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () => context
                      .bloc<AccountInfoBloc>()
                      .add(SubmitAccountInfoForm()),
                  color: ColorStyles.blue,
                  text: "Submit",
                  minWidth: SizeConfig.xMargin(context, 90),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2.5),
                ),
              ],
            ),
          ),
        ),
        listener: (context, state) =>
            state.submitAccountInfoFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) {
              context.bloc<LoanViewCubit>().checkActiveLoans();
              return context.navigator.pushSuccessView(
                message: "Your loan request has been sent successfully",
                buttonText: "Back to loans",
                onTap: () => context.navigator.pushAndRemoveUntil(
                  Routes.mainView,
                  (route) => false,
                  arguments: MainViewArguments(pageNumber: 1)
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
