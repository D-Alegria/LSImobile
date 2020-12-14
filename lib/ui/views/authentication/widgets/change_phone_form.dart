import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_cubit.dart';

class ChangePhoneForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormCubit, AuthFormState>(
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
                        text: "Change phone number",
                        style: GoogleFonts.workSans(
                          color: ColorStyles.black,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textSize(context, 4),
                          height: SizeConfig.textSize(context, 0.4),
                        ),
                        children: [
                          TextSpan(
                            text: "\nEnter your new phone number below",
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
                    labelText: "Phone number",
                    initialValue: state.phoneNumber,
                    onChanged: (value) =>
                        context.bloc<AuthFormCubit>().phoneNumberChanged(value),
                    validator: (value) {
                      if (!context
                          .bloc<AuthFormCubit>()
                          .state
                          .phoneNumber
                          .isPhoneNo) return "Invalid Phone Number";
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 4)),
                  sharedRaisedButton(
                    context: context,
                    onPressed: () {
                      if (context
                          .bloc<AuthFormCubit>()
                          .state
                          .phoneNumber
                          .isPhoneNo) {
                        context.bloc<AuthFormCubit>().registerUser();
                        return;
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
                    action: () => context
                            .bloc<AuthFormCubit>()
                            .state
                            .phoneNumber
                            .isPhoneNo
                        ? context.navigator.pop()
                        : null,
                  ),
                ],
              ),
            ),
      listener: (context, state) => state.authFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showErrorSnackBar(context, failure.message),
          (success) => context.navigator.popUntilPath(Routes.verificationView),
        ),
      ),
    );
  }
}
