import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class MiniLoanCard extends StatelessWidget {
  const MiniLoanCard({
    Key key,
    @required this.image,
    @required this.color,
    @required this.borderColor,
    @required this.text,
  }) : super(key: key);

  final String image;
  final String text;
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: sharedOutlineContainer(
        color: color,
        context: context,
        borderColor: borderColor,
        height: SizeConfig.yMargin(context, 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(image),
            Text(
              text,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 4),
                color: ColorStyles.grey2,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
