import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';

class ScreenHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color secondTextColor;
  final bool investment;
  final String image;

  ScreenHeader({
    this.firstText,
    this.secondText,
    this.secondTextColor,
    this.investment,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<MainViewCubit>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textSize(context, 6.5),
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 0.5)),
                Text(
                  secondText,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.textSize(context, 4.5),
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: SizeConfig.xMargin(context, 2)),
          InkWell(
            onTap: () => investment ? print('investment') : state.changePage(4),
            child: ClipOval(
              child: investment
                  ? Icon(
                      Icons.error_outline,
                      color: ColorStyles.light,
                      size: SizeConfig.yMargin(context, 7),
                    )
                  : Image.network(
                      image,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: ColorStyles.black,
                      ),
                      height: SizeConfig.yMargin(context, 7),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
