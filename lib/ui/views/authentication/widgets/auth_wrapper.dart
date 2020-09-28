import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/login/login_view.dart';
import 'package:lsi_mobile/ui/views/authentication/register/register_view.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/register/register_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_view/auth_view_cubit.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthViewCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
      ],
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
