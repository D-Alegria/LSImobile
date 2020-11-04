import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/verify_bvn_form.dart';

import '../widgets/loan_form.dart';
import '../view_model/provide_bvn/provide_bvn_bloc.dart';

class ProvideBVNView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showVerifyBVNForm() {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: ColorStyles.black.withOpacity(0.2),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: VerifyBVNForm(),
            ),
          );
        },
      );
    }

    return BlocProvider(
      create: (context) => ProvideBvnBloc(),
      child: BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
        listener: (context, state) {
          state.provideBVNFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => null,
              (r) => _showVerifyBVNForm(),
            ),
          );
        },
        builder: (context, state) {
          return LoanForm(
            title: "Provide your BVN",
            form: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.yMargin(context, 2.5),
                  ),
                  Text(
                    "Please enter your BVN number to begin the loan application process",
                    style: TextStyle(
                      color: ColorStyles.light,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(context, 4),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.yMargin(context, 5),
                  ),
                  SharedTextFormField(
                      labelText: "Bank Verification Number (BVN)"),
                  Spacer(),
                  sharedRaisedButton(
                    context: context,
                    onPressed: () =>
                        context.bloc<ProvideBvnBloc>().add(CheckBVN()),
                    color: ColorStyles.blue,
                    text: "Check BVN",
                    minWidth: SizeConfig.xMargin(context, 90),
                  ),
                  SizedBox(
                    height: SizeConfig.yMargin(context, 2.5),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
