import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthForm(
      title: "Login",
      subTitle: "Secure login to your account",
      height: 55,
      form: Form(
        child: ListView(
          children: <Widget>[
            SharedTextFormField(
              labelText: "Phone number",
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 3),
            ),
            SharedTextFormField(
              labelText: "Pin",
              obscureText: true,
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 5),
            ),
            sharedRaisedButton(
              context: context,
              onPressed: () {},
              color: ColorStyles.blue,
              text: "Login",
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 2),
            ),
            sharedOptionFlatButton(
              context: context,
              firstText: "Don’t have an account?",
              secondText: "Register",
              action: () => context.bloc<AuthViewCubit>().toggleAuthView(),
            ),
          ],
        ),
      ),
    );
  }
}
