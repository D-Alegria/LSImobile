import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/register/register_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      builder: (context, state) => AuthForm(
        title: "Register",
        subTitle: "Create a free account",
        height: 85,
        form: Form(
          autovalidate: state.showErrorMessages,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "First name",
                  onChanged: (value) =>
                      context.bloc<RegisterBloc>().add(FirstNameChanged(value)),
                  validator: (value) {
                    if (state.firstName.isEmpty)
                      return "Field name is required";
                    return null;
                  },
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Last name",
                  onChanged: (value) =>
                      context.bloc<RegisterBloc>().add(LastNameChanged(value)),
                  validator: (value) {
                    if (state.lastName.isEmpty) return "Field is required";
                    return null;
                  },
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Phone number",
                  onChanged: (value) => context
                      .bloc<RegisterBloc>()
                      .add(PhoneNumberChanged(value)),
                  validator: (value) {
                    if (state.phoneNumber.isEmpty) return "Field is required";
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Email address",
                  onChanged: (value) =>
                      context.bloc<RegisterBloc>().add(EmailChanged(value)),
                  validator: (value) {
                    if (!state.emailAddress.isEmail) return "Invalid Email";
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Password",
                  obscureText: true,
                  onChanged: (value) =>
                      context.bloc<RegisterBloc>().add(PasswordChanged(value)),
                  validator: (value) {
                    if (!state.password.isValidPassword)
                      return "Password must be at least 5 characters";
                    return null;
                  },
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 5),
                ),
                sharedRaisedButton(
                  context: context,
                  onPressed: () =>
                      context.bloc<RegisterBloc>()..add(RegisterUser()),
                  color: ColorStyles.blue,
                  text: "Register",
                  minWidth: SizeConfig.xMargin(context, 100),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 2),
                ),
                sharedOptionFlatButton(
                  context: context,
                  firstText: "Already have an account?",
                  secondText: "Login here",
                  action: () => context.bloc<AuthViewCubit>().toggleAuthView(),
                ),
              ],
            ),
          ),
        ),
      ),
      listener: (context, state) => state.registerFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.map(networkGlitch: (value) => value.message),
            duration: new Duration(seconds: 3),
          ).show(context),
          (success) => context.navigator
              .pushAndRemoveUntil(Routes.verificationView, (route) => false),
        ),
      ),
    );
  }
}
