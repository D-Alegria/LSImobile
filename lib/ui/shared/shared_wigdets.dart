import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import 'const_color.dart';

Widget sharedRaisedButton({
  @required BuildContext context,
  @required Function onPressed,
  @required Color color,
  @required String text,
  double minWidth = 0.0,
}) {
  return ButtonTheme(
    minWidth: minWidth,
    height: SizeConfig.yMargin(context, 6),
    child: RaisedButton(
      onPressed: onPressed,
      color: color,
      child: Text(
        text,
        style: GoogleFonts.workSans(
          color: ColorStyles.white,
          fontSize: SizeConfig.textSize(context, 5),
          fontWeight: FontWeight.w500,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 8,
      splashColor: ColorStyles.blue.withOpacity(0.2),
      focusElevation: 4,
    ),
  );
}
