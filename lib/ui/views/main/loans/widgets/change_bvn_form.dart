import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';

import 'verify_bvn_form.dart';

class ChangeBvnForm extends StatelessWidget {
  final String fullName;

  const ChangeBvnForm({Key key, @required this.fullName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
      builder: (context, state) => state.isSubmitting
          ? sharedLoader()
          : Form(
              autovalidateMode: AutovalidateMode.always,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: SizeConfig.yMargin(context, 3)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 1),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: "Change BVN number",
                        style: GoogleFonts.workSans(
                          color: ColorStyles.black,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textSize(context, 4),
                          height: SizeConfig.textSize(context, 0.4),
                        ),
                        children: [
                          TextSpan(
                            text: "\nEnter your new bvn below",
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w500,
                              color: ColorStyles.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 3)),
                  SharedTextFormField(
                    labelText: "BVN",
                    initialValue: state.bvn,
                    onChanged: (value) =>
                        context.bloc<ProvideBvnBloc>().add(BvnChanged(value)),
                    validator: (value) {
                      if (!context.bloc<ProvideBvnBloc>().state.bvn.isBvn)
                        return "Field is required";
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 4)),
                  sharedRaisedButton(
                    context: context,
                    onPressed: () {
                      if (context.bloc<ProvideBvnBloc>().state.bvn.isBvn) {
                        context.bloc<ProvideBvnBloc>().add(CheckBVN(fullName));
                      }
                    },
                    color: ColorStyles.blue,
                    text: "Change",
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 1)),
                  sharedOptionFlatButton(
                    context: context,
                    firstText: "",
                    secondText: "Cancel",
                    action: () {
                      if (context.bloc<ProvideBvnBloc>().state.bvn.isBvn) {
                        context.navigator.pop();
                        sharedBottomSheet(
                          context: context,
                          form: VerifyBVNForm(),
                          height: 53,
                          isDismissible: true,
                        );
                      } else {
                        null;
                      }
                    },
                  ),
                ],
              ),
            ),
      listener: (context, state) => state.submitFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (l) => showErrorSnackBar(context, l.message),
          (r) {
            context.navigator.pop();
            sharedBottomSheet(
              context: context,
              form: VerifyBVNForm(),
              height: 53,
              isDismissible: true,
            );
          },
        ),
      ),
    );
  }
}
