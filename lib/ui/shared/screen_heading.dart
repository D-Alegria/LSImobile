import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class ScreenHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color secondTextColor;
  final bool profile;
  final String image;

  ScreenHeader({
    this.firstText,
    this.secondText,
    this.secondTextColor,
    this.profile,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<MainViewCubit>(context);
    var userProfile = BlocProvider.of<UserProfileCubit>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText.capitalize,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textSize(context, 21.tx),
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 0.5)),
                Text(
                  secondText,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.textSize(context, 16.tx),
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: SizeConfig.xMargin(context, 2)),
          InkWell(
            onTap: () async => profile
                ? await userProfile.updateProfilePictureImage(context)
                : state.changePage(4),
            child: CircleAvatar(
              radius: SizeConfig.yMargin(context, 3),
              backgroundImage: NetworkImage(image),
            ),
          )
        ],
      ),
    );
  }
}
