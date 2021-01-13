import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormCubit, AuthFormState>(
      builder: (context, state) => AuthForm(
        title: "Login",
        subTitle: "Secure login to your account",
        height: 55,
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    SharedTextFormField(
                      labelText: "Email address",
                      initialValue: state.emailAddress,
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
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    SharedTextFormField(
                      labelText: "Password",
                      initialValue: state.password,
                      obscureText: true,
                      onChanged: (value) =>
                          context.bloc<AuthFormCubit>().passwordChanged(value),
                      validator: (value) {
                        if (!context
                            .bloc<AuthFormCubit>()
                            .state
                            .password
                            .isValidPassword)
                          return "Password must be at least 6 characters";
                        return null;
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 5)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () =>
                          context.bloc<AuthFormCubit>().loginUser(),
                      color: ColorStyles.blue,
                      text: "Login",
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 1)),
                    Align(
                      alignment: Alignment.topRight,
                      child: FlatButton(
                        onPressed: () =>
                            context.navigator.pushForgotPasswordView(),
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.textSize(context, 4.5),
                            fontWeight: FontWeight.w400,
                            color: ColorStyles.light,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 23.h)),
                    SizedBox(height: SizeConfig.yMargin(context, 2)),
                    sharedOptionFlatButton(
                      context: context,
                      firstText: "Don’t have an account?",
                      secondText: "Register",
                      action: () =>
                          context.bloc<AuthViewCubit>().toggleAuthView(),
                    ),
                  ],
                ),
              ),
      ),
      listener: (context, state) => state.authFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showErrorSnackBar(context, failure.message),
          (success) => context.navigator.pushAndRemoveUntil(
            Routes.mainView,
            (route) => false,
            arguments: MainViewArguments(pageNumber: 0),
          ),
        ),
      ),
    );
  }
}
