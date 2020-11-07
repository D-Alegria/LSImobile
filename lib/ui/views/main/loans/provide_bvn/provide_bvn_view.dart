import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/verify_bvn_form.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import '../widgets/loan_form.dart';
import 'view_model/provide_bvn_bloc.dart';

class ProvideBVNView extends StatefulWidget {
  @override
  _ProvideBVNViewState createState() => _ProvideBVNViewState();
}

class _ProvideBVNViewState extends State<ProvideBVNView> {
  String fullName;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => fullName = value.fullName,
        );
    super.initState();
  }

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
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: VerifyBVNForm(),
            ),
          );
        },
      );
    }

    return BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
      listener: (context, state) {
        state.submitFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => FlushbarHelper.createError(
                    message: l.message, duration: new Duration(seconds: 3))
                .show(context),
            (r) => _showVerifyBVNForm(),
          ),
        );
      },
      builder: (context, state) {
        return LoanForm(
          title: "Provide your BVN",
          form: state.isSubmitting
              ? sharedLoader()
              : Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                      Text(
                        "Please enter your BVN number to begin the loan application process",
                        style: TextStyle(
                          color: ColorStyles.light,
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(context, 4),
                          height: SizeConfig.textSize(context, 0.4),
                        ),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 5)),
                      SharedTextFormField(
                        labelText: "Bank Verification Number (BVN)",
                        onChanged: (value) => context
                            .bloc<ProvideBvnBloc>()
                            .add(BvnChanged(value)),
                        validator: (value) {
                          if (!state.bvn.isBvn) return "BVN has 11 digits";
                          return null;
                        },
                        initialValue: state.bvn,
                        keyboardType: TextInputType.number,
                      ),
                      Spacer(),
                      sharedRaisedButton(
                        context: context,
                        onPressed: () => context
                            .bloc<ProvideBvnBloc>()
                            .add(CheckBVN(fullName)),
                        color: ColorStyles.blue,
                        text: "Check BVN",
                        minWidth: SizeConfig.xMargin(context, 90),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
