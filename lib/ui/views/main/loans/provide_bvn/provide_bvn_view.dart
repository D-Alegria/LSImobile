import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

import '../widgets/loan_form.dart';
import 'view_model/provide_bvn_bloc.dart';

class ProvideBVNView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserDetailsWrapper(
      loaded: (user) => BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
        listener: (context, state) {
          state.submitFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) => context.navigator.pushAndRemoveUntil(
                  Routes.personalInfoFormView, (route) => false),
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.xMargin(context, 5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: SizeConfig.yMargin(context, 105.h)),
                          Text(
                            "Please enter your BVN number to begin the loan application process",
                            style: GoogleFonts.workSans(
                              color: ColorStyles.light,
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.textSize(context, 14.tx),
                              height: SizeConfig.textSize(context, 0.4),
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 27.h)),
                          SharedTextFormField(
                            labelText: "Bank Verification Number (BVN)",
                            onChanged: (value) => context
                                .bloc<ProvideBvnBloc>()
                                .add(BvnChanged(value)),
                            validator: (value) {
                              if (!context
                                  .bloc<ProvideBvnBloc>()
                                  .state
                                  .bvn
                                  .isBvn) return "BVN has 11 digits";
                              return null;
                            },
                            initialValue: state.bvn,
                            keyboardType: TextInputType.number,
                          ),
                          Spacer(),
                          sharedRaisedButton(
                            context: context,
                            onPressed: () => context.bloc<ProvideBvnBloc>().add(
                                CheckBVN(user.userData.data.profile.legalName)),
                            color: ColorStyles.blue,
                            text: "Check BVN",
                            minWidth: SizeConfig.xMargin(context, 90),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 5)),
                        ],
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
