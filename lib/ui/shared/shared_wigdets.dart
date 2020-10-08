import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

import 'const_color.dart';

/// ////////////////////////////////////////////////////////////////////////////
/// [sharedRaisedButton]
/// ////////////////////////////////////////////////////////////////////////////
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

/// ////////////////////////////////////////////////////////////////////////////
/// [sharedOutlineRaisedButton]
/// ////////////////////////////////////////////////////////////////////////////
Widget sharedOutlineRaisedButton({
  @required BuildContext context,
  @required Function onPressed,
  @required Color color,
  @required String text,
  double minWidth = 0.0,
}) {
  return ButtonTheme(
    minWidth: minWidth,
    height: SizeConfig.yMargin(context, 6),
    child: OutlineButton(
      highlightedBorderColor: color,
      borderSide: BorderSide(
        color: color,
        width: 2,
      ),
      onPressed: onPressed,
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
      // elevation: 8,
      splashColor: ColorStyles.blue.withOpacity(0.2),
      // focusElevation: 4,
    ),
  );
}

/// ////////////////////////////////////////////////////////////////////////////
/// [SharedTextFormField]
/// ////////////////////////////////////////////////////////////////////////////
class SharedTextFormField extends StatelessWidget {
  final String labelText;
  final Function(String value) onChanged;
  final Function(String value) validator;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;

  const SharedTextFormField({
    Key key,
    @required this.labelText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
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
      decoration: textFieldDecoration.copyWith(
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

/// ////////////////////////////////////////////////////////////////////////////
/// [sharedOptionFlatButton]
/// Example Change Password etc
/// ////////////////////////////////////////////////////////////////////////////
Widget sharedOptionFlatButton({
  @required BuildContext context,
  @required String firstText,
  String secondText,
  @required Function action,
}) {
  return FlatButton(
    onPressed: action,
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "$firstText  ",
        style: GoogleFonts.workSans(
          fontSize: SizeConfig.textSize(context, 4),
          fontWeight: FontWeight.w400,
          color: ColorStyles.light,
        ),
        children: <TextSpan>[
          TextSpan(
            text: secondText,
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w400,
              color: ColorStyles.primary,
            ),
          ),
        ],
      ),
    ),
  );
}

/// ////////////////////////////////////////////////////////////////////////////
/// [OutlineContainer]
/// [sharedOutlineContainer]
/// ////////////////////////////////////////////////////////////////////////////
Widget sharedOutlineContainer({
  @required BuildContext context,
  @required Color color,
  @required Color borderColor,
  double height,
  Widget child,
}) {
  return Container(
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      border: Border.all(color: borderColor, width: 1),
    ),
    child: child,
  );
}

Widget sharedInfoListTile({
  @required BuildContext context,
  @required Widget icon,
  String title,
  String subTitle,
  String trailingText,
  String trailingSubText,
  bool red = false,
}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0),
    leading: CircleAvatar(
      backgroundColor: red
          ? ColorStyles.red.withOpacity(0.2)
          : ColorStyles.green2.withOpacity(0.2),
      child: icon,
    ),
    title: Text(
      title,
      style: GoogleFonts.workSans(
        fontWeight: FontWeight.w400,
        color: ColorStyles.black,
        fontSize: SizeConfig.textSize(context, 4.5),
      ),
    ),
    subtitle: Text(
      subTitle,
      style: GoogleFonts.workSans(
        fontWeight: FontWeight.w400,
        color: red ? ColorStyles.red : ColorStyles.green2,
        fontSize: SizeConfig.textSize(context, 3.5),
      ),
    ),
    trailing: RichText(
      textAlign: TextAlign.right,
      text: TextSpan(
        text: trailingText,
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w400,
          color: ColorStyles.grey2,
          fontSize: SizeConfig.textSize(context, 4.5),
        ),
        children: [
          TextSpan(
            text: "\n$trailingSubText",
            style: GoogleFonts.workSans(
              color: ColorStyles.black,
              fontSize: SizeConfig.textSize(context, 3.5),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget sharedDropDownFormField<T>({
  @required BuildContext context,
  @required String labelText,
  @required Function onChanged,
  Function validator,
  @required List<T> items,
}) {
  return DropdownButtonFormField(
    value: items.first,
    items: items
        .map(
          (e) => DropdownMenuItem(
            child: Text("$e"),
            value: e,
          ),
        )
        .toList(),
    icon: Icon(Icons.keyboard_arrow_down),
    validator: validator,
    onChanged: onChanged,
    decoration: textFieldDecoration.copyWith(
      labelText: labelText,
      labelStyle: GoogleFonts.workSans(
        fontSize: SizeConfig.textSize(context, 5),
        fontWeight: FontWeight.w500,
        color: const Color(0xFF18172B).withOpacity(0.6),
      ),
    ),
  );
}

final textFieldDecoration = InputDecoration(
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
);
