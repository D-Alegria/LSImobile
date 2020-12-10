import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      builder: (context, state) => AuthForm(
        title: "Register",
        subTitle: "Create a free account",
        height: 70,
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: SizeConfig.yMargin(context, 6)),
                      SharedTextFormField(
                        labelText: "Full name",
                        initialValue: state.fullName,
                        onChanged: (value) => context
                            .bloc<AuthFormBloc>()
                            .add(FullNameChanged(value)),
                        validator: (value) {
                          if (context
                              .bloc<AuthFormBloc>()
                              .state
                              .fullName
                              .isEmpty) return "Field name is required";
                          return null;
                        },
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      SharedTextFormField(
                        labelText: "Phone number",
                        initialValue: state.phoneNumber,
                        onChanged: (value) => context
                            .bloc<AuthFormBloc>()
                            .add(PhoneNumberChanged(value)),
                        validator: (value) {
                          if (!context
                              .bloc<AuthFormBloc>()
                              .state
                              .phoneNumber
                              .isPhoneNo) return "Invalid Phone Number";
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      SharedTextFormField(
                        labelText: "Email address",
                        initialValue: state.emailAddress,
                        onChanged: (value) => context
                            .bloc<AuthFormBloc>()
                            .add(EmailChanged(value)),
                        validator: (value) {
                          if (!context
                              .bloc<AuthFormBloc>()
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
                        onChanged: (value) => context
                            .bloc<AuthFormBloc>()
                            .add(PasswordChanged(value)),
                        validator: (value) {
                          if (!context
                              .bloc<AuthFormBloc>()
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
                            context.bloc<AuthFormBloc>().add(RegisterUser()),
                        color: ColorStyles.blue,
                        text: "Register",
                        minWidth: SizeConfig.xMargin(context, 100),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      sharedOptionFlatButton(
                        context: context,
                        firstText: "Already have an account?",
                        secondText: "Login here",
                        action: () =>
                            context.bloc<AuthViewCubit>().toggleAuthView(),
                      ),
                    ],
                  ),
                ),
              ),
      ),
      listener: (context, state) => state.authFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showErrorSnackBar(context, failure.message),
          (success) => context.navigator
              .pushAndRemoveUntil(Routes.verificationView, (route) => false),
        ),
      ),
    );
  }
}
