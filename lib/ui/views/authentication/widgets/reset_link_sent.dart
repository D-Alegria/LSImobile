import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ResetLinkSentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 1),
      ),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.yMargin(context, 50.h)),
          SvgPicture.asset(
            'assets/svgs/success_icon.svg',
            height: SizeConfig.yMargin(context, 80.h),
            fit: BoxFit.fitHeight,
            color: Color(0xFF28CBD6),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 36.h)),
          Text(
            "A link has been sent to your email",
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
              color: ColorStyles.black,
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 5.5),
              height: SizeConfig.textSize(context, 0.35),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 20.h)),
          Text(
            "Click on the link sent to your email address to reset your password",
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
              color: ColorStyles.grey,
              fontWeight: FontWeight.w400,
              fontSize: SizeConfig.textSize(context, 4),
              height: SizeConfig.textSize(context, 0.35),
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 32.h)),
          sharedRaisedButton(
            context: context,
            minWidth: double.infinity,
            onPressed: () => context.navigator.pushAndRemoveUntil(
              Routes.authWrapper,
              (route) => false,
            ),
            color: ColorStyles.blue,
            text: "Back to login",
          ),
        ],
      ),
    );
  }
}
