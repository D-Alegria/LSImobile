import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/screen_heading.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView(
          children: [
            ScreenHeader(
              firstText: "My Account",
              image: "assets/images/testImage.png",
              secondText: "Margaret Novakowska",
              investment: false,
              secondTextColor: ColorStyles.grey3,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 5.4)),
            sharedInfoButton(
              onTap: () => context.navigator.pushEditProfileView(),
              context: context,
              icon: Icon(
                Icons.person_outline_outlined,
                color: ColorStyles.dark,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Edit profile",
              background: ColorStyles.lGrey.withOpacity(0.4),
              showArrow: true,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedInfoButton(
              onTap: () => context.navigator.pushAccountsCardsView(),
              context: context,
              icon: Icon(
                Icons.credit_card,
                color: ColorStyles.dark,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Account and cards",
              background: ColorStyles.lGrey.withOpacity(0.4),
              showArrow: true,
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
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
                      size: SizeConfig.textSize(context, 8),
                    ),
                    text: "Self help",
                    background: ColorStyles.lGrey.withOpacity(0.4),
                  ),
                ),
                SizedBox(width: SizeConfig.xMargin(context, 3)),
                Expanded(
                  child: sharedInfoButton(
                    onTap: () => context.navigator.pushContactUsView(),
                    context: context,
                    icon: Icon(
                      Icons.phone_in_talk_outlined,
                      color: ColorStyles.dark,
                      size: SizeConfig.textSize(context, 8),
                    ),
                    text: "Contact us",
                    background: ColorStyles.lGrey.withOpacity(0.4),
                  ),
                )
              ],
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedInfoButton(
              context: context,
              icon: Icon(
                Icons.power_settings_new_rounded,
                size: SizeConfig.textSize(context, 8),
                color: ColorStyles.red,
              ),
              text: "Logout",
              background: ColorStyles.red.withOpacity(0.22),
            ),
          ],
        ),
      ),
    );
  }
}
