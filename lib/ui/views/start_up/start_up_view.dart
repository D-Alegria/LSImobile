import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          print(state);
          state.map(
            initial: (_) => null,
            unauthenticated: (_) => context.navigator.pushOnBoardingView(),
            authenticated: (_) => null,
          );
        },
        child: Scaffold(
          body: Container(
            width: SizeConfig.xMargin(context, 100),
            height: SizeConfig.yMargin(context, 100),
            color: ColorStyles.white,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: SizeConfig.yMargin(context, 10),
                      ),
                      Text(
                        "Initiative Moni",
                        style: GoogleFonts.pacifico(
                          fontSize: SizeConfig.textSize(context, 8),
                          color: ColorStyles.orange,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.yMargin(context, 10),
                      ),
                      Container(
                        height: SizeConfig.yMargin(context, 30),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: SizeConfig.xMargin(context, -80),
                  right: SizeConfig.xMargin(context, 0),
                  bottom: SizeConfig.yMargin(context, -30),
                  child: Container(
                    height: SizeConfig.yMargin(context, 65),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/images/onboarding/big_naira.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
