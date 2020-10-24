import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class DownloadButton extends StatelessWidget {
  final String download = "assets/svgs/download.svg";

  const DownloadButton({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 10),
      decoration: BoxDecoration(
        color: ColorStyles.green2.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(download),
          Text(
            "Download Investment Advice",
            style: GoogleFonts.workSans(
              color: ColorStyles.green2,
              fontSize: SizeConfig.textSize(context, 5),
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}