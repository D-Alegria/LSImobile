import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/login/login_view.dart';
import 'package:lsi_mobile/ui/views/authentication/register/register_view.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';

class AuthWrapper extends StatefulWidget {
  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  void initState() {
    context.bloc<AuthFormCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthViewCubit(),
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: BlocBuilder<AuthViewCubit, AuthViewState>(
            builder: (context, state) {
              return state.showLogin
                  ? LoginView()
                  : SingleChildScrollView(child: RegisterView());
            },
          ),
        ),
      ),
    );
  }
}
