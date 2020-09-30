import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/register/register_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/option_flatbutton.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      builder: (context, state) => AuthForm(
        title: "Register",
        subTitle: "Create a free account",
        height: 80,
        form: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "First name",
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Last name",
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Phone number",
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Email address",
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                SharedTextFormField(
                  labelText: "Pin",
                  obscureText: true,
                  textInputAction: TextInputAction.done,
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
                OptionFlatButton(
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
          (failure) => null,
          (success) => context.navigator
              .pushAndRemoveUntil(Routes.verificationView, (route) => false),
        ),
      ),
    );
  }
}
