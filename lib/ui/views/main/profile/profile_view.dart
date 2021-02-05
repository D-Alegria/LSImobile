import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/screen_heading.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          Future.value(context.bloc<UserProfileCubit>()..getUserDetails()),
      child: UserDetailsWrapper(
        loaded: (userData) =>
            _buildProfileView(context, userData.userData.data),
      ),
    );
  }

  Widget _buildProfileView(BuildContext context, UserDetailsRequest user) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 60.h)),
            ScreenHeader(
              firstText: "My Account",
              image: user.profile.fileName,
              secondText: user.profile.legalName,
              profile: true,
              secondTextColor: ColorStyles.grey3,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 40.h)),
            sharedInfoButton(
              onTap: () => context.navigator.pushEditProfileView(),
              context: context,
              icon: Icon(
                Icons.person_outline_outlined,
                color: ColorStyles.dark,
                size: SizeConfig.textSize(context, 6),
              ),
              text: "Edit profile",
              background: ColorStyles.lGrey.withOpacity(0.3),
              showArrow: true,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 16.h)),
            sharedInfoButton(
              onTap: () => context.navigator.pushAccountsCardsView(),
              context: context,
              icon: Icon(
                Icons.credit_card,
                color: ColorStyles.dark,
                size: SizeConfig.textSize(context, 6),
              ),
              text: "Account and cards",
              background: ColorStyles.lGrey.withOpacity(0.3),
              showArrow: true,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 16.h)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: sharedInfoButton(
                    onTap: () => context.navigator.pushFAQView(),
                    context: context,
                    icon: Icon(
                      Icons.help_outline,
                      color: ColorStyles.dark,
                      size: SizeConfig.textSize(context, 6),
                    ),
                    text: "Self help",
                    background: ColorStyles.lGrey.withOpacity(0.3),
                  ),
                ),
                SizedBox(width: SizeConfig.xMargin(context, 9.w)),
                Expanded(
                  child: sharedInfoButton(
                    onTap: () => context.navigator.pushContactUsView(),
                    context: context,
                    icon: Icon(
                      Icons.phone_in_talk_outlined,
                      color: ColorStyles.dark,
                      size: SizeConfig.textSize(context, 6),
                    ),
                    text: "Contact us",
                    background: ColorStyles.lGrey.withOpacity(0.3),
                  ),
                )
              ],
            ),
            SizedBox(height: SizeConfig.yMargin(context, 16.h)),
            BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (BuildContext context, state) => state.maybeMap(
                unauthenticated: (_) => context.navigator.pushAndRemoveUntil(
                  Routes.authWrapper,
                  (route) => false,
                ),
                orElse: () => null,
              ),
              child: sharedInfoButton(
                context: context,
                icon: Icon(
                  Icons.power_settings_new_rounded,
                  size: SizeConfig.textSize(context, 6),
                  color: ColorStyles.red2,
                ),
                onTap: () =>
                    context.bloc<AuthenticationBloc>().add(LogoutRequest()),
                text: "Logout",
                background: ColorStyles.red.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
