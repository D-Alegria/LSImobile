import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

class ImageOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProfile = BlocProvider.of<UserProfileCubit>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SharedWideButton(
          onTap: () {
            context.navigator.pop();
            return userProfile.updatePicFromCamera(context);
          },
          image: Icon(
            Icons.camera_alt_outlined,
            size: SizeConfig.textSize(context, 8),
            color: ColorStyles.dark,
          ),
          text: "Camera",
          backgroundColor: Colors.transparent,
          textColor: ColorStyles.dark,
        ),
        SharedWideButton(
          onTap: () {
            context.navigator.pop();
            return userProfile.updatePicFromGallery(context);
          },
          image: Icon(
            Icons.photo_library_outlined,
            size: SizeConfig.textSize(context, 8),
            color: ColorStyles.dark,
          ),
          text: "Gallery",
          backgroundColor: Colors.transparent,
          textColor: ColorStyles.dark,
        )
      ],
    );
  }
}
