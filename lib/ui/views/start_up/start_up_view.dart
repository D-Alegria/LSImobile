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
          state.map(
            initial: (_) => null,
            unauthenticated: (_) => context.navigator.pushAndRemoveUntil(
              Routes.onBoardingView,
              (route) => false,
            ),
            authenticated: (_) => context.navigator.pushAndRemoveUntil(
              Routes.mainView,
              (route) => false,
              arguments: MainViewArguments(pageNumber: 0),
            ),
            unVerified: (_) => context.navigator.pushAndRemoveUntil(
              Routes.verificationView,
              (route) => false,
            ),
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
                      Container(
                        height: SizeConfig.yMargin(context, 50),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/start_logo.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Text(
                        "...a passion for wealth creation",
                        style: GoogleFonts.varelaRound(
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.textSize(context, 5),
                          color: ColorStyles.grey2,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: SizeConfig.xMargin(context, -80),
                  right: SizeConfig.xMargin(context, 0),
                  bottom: SizeConfig.yMargin(context, -33),
                  child: Container(
                    height: SizeConfig.yMargin(context, 65),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage("assets/images/big_naira.png"),
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
