import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/reset_link_sent.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthFormCubit, AuthFormState>(
        builder: (context, state) {
          return AuthForm(
            title: "Reset password",
            subTitle: "",
            height: 50,
            form: state.isSubmitting
                ? sharedLoader()
                : Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.xMargin(context, 1),
                          ),
                          child: Text(
                            "Enter your email address below, a reset link will be sent to your email",
                            style: GoogleFonts.workSans(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.textSize(context, 4),
                              height: SizeConfig.textSize(context, 0.4),
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 29.h)),
                        SharedTextFormField(
                          initialValue: state.emailAddress,
                          labelText: "Email address",
                          onChanged: (value) =>
                              context.bloc<AuthFormCubit>().emailChanged(value),
                          validator: (value) {
                            if (!context
                                .bloc<AuthFormCubit>()
                                .state
                                .emailAddress
                                .isEmail) return "Invalid Email";
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 50.h)),
                        sharedRaisedButton(
                          context: context,
                          onPressed: () =>
                              context.bloc<AuthFormCubit>().resetPassword(),
                          color: ColorStyles.blue,
                          text: "Submit",
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 22.h)),
                      ],
                    ),
                  ),
          );
        },
        listener: (context, state) {
          state.verifyFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (failure) => showErrorSnackBar(context, failure.message),
              (success) => sharedBottomSheet(
                context: context,
                form: ResetLinkSentView(),
                height: 414.h,
              ),
            ),
          );
        },
      ),
    );
  }
}
