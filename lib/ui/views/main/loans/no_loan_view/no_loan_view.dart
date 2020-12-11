import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_data.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/image_options.dart';
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';

class NoLoanView extends StatelessWidget {
  final UserData user;

  const NoLoanView({
    Key key,
    @required this.user,
  }) : super(key: key);

  final String instantMoney = "assets/images/apply_loan.png";
  final String optionsIcon = "assets/svgs/icons/options_icon.svg";

  @override
  Widget build(BuildContext context) {
    var mainView = BlocProvider.of<MainViewCubit>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Loans",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 16.tx),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
        actions: [
          sharedIconButton(
            context: context,
            onPressed: () {},
            icon: SvgPicture.asset(optionsIcon),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
          vertical: SizeConfig.yMargin(context, 8),
        ),
        width: SizeConfig.xMargin(context, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              instantMoney,
              fit: BoxFit.fitHeight,
            ),
            sharedRaisedButton(
              context: context,
              text: "Apply for a loan",
              color: ColorStyles.orange,
              onPressed: () {
                String defaultImage =
                    "https://res.cloudinary.com/africacodes-concepts-limited/image/upload/v1507561173/avatar-mini.jpg?q=auto";
                if (user.data.profile.fileName == defaultImage)
                  return showActionSnackBar(
                    context: context,
                    message:
                        "Please you need to update your profile picture to apply for loans",
                    onTap: () {
                      mainView.changePage(4);
                      sharedBottomSheet(
                        context: context,
                        form: ImageOptions(),
                        height: 25,
                        isDismissible: true,
                      );
                    },
                    buttonText: "Click here to update",
                  );
                else {
                  return context.navigator.pushLoanProductView();
                }
              },
              minWidth: SizeConfig.xMargin(context, 70),
            ),
          ],
        ),
      ),
    );
  }
}
