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

class SharedTextFormField extends StatelessWidget {
  // static final Key _k1 = new GlobalKey();
  final String labelText;
  final Function onChanged;
  final Function validator;
  final bool obscureText;
  final TextInputAction textInputAction;

  const SharedTextFormField({
    Key key,
    @required this.labelText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.textInputAction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      style: GoogleFonts.workSans(
        fontSize: SizeConfig.textSize(context, 5),
        fontWeight: FontWeight.w500,
        color: const Color(0xFF18172B).withOpacity(0.6),
      ),
      cursorColor: ColorStyles.dark,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorStyles.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorStyles.black.withOpacity(0.0),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorStyles.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorStyles.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorStyles.black,
            width: 1.0,
          ),
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.workSans(
          fontSize: SizeConfig.textSize(context, 5),
          fontWeight: FontWeight.w500,
          color: const Color(0xFF18172B).withOpacity(0.6),
        ),
      ),
    );
  }
}
