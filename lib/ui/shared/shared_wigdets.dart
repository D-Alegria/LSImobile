import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

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
        style: TextStyle(
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
/// [sharedLoadingRaisedButton]
/// ////////////////////////////////////////////////////////////////////////////
Widget sharedLoadingRaisedButton({
  @required BuildContext context,
  @required Color color,
  @required String text,
  double minWidth = 0.0,
}) {
  return ButtonTheme(
    minWidth: minWidth,
    height: SizeConfig.yMargin(context, 6),
    child: RaisedButton(
      onPressed: null,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.yMargin(context, 2),
      ),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: ColorStyles.white,
          ),
          Text(
            text,
            style: GoogleFonts.workSans(
              color: ColorStyles.white,
              fontSize: SizeConfig.textSize(context, 5),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
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
        style: TextStyle(
          color: color,
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
  final TextEditingController controller;

  const SharedTextFormField({
    Key key,
    @required this.labelText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(
        height: SizeConfig.yMargin(context, 0.17),
        fontSize: SizeConfig.textSize(context, 5),
        fontWeight: FontWeight.w500,
        color: const Color(0xFF18172B).withOpacity(0.6),
      ),
      cursorColor: ColorStyles.dark,
      decoration: textFieldDecoration.copyWith(
        labelText: labelText,
        labelStyle: TextStyle(
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
        style: TextStyle(
          fontSize: SizeConfig.textSize(context, 4),
          fontWeight: FontWeight.w400,
          color: ColorStyles.light,
        ),
        children: <TextSpan>[
          TextSpan(
            text: secondText,
            style: TextStyle(
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
  AlignmentGeometry alignment,
  Color color,
  @required Color borderColor,
  double height,
  double width,
  Widget child,
  EdgeInsets padding,
  Function onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: alignment,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: child,
    ),
  );
}

/// ////////////////////////////////////////////////////////////////////////////
/// [OutlineContainer]
/// [sharedOutlineContainer]
/// ////////////////////////////////////////////////////////////////////////////
Widget sharedRaisedContainer({
  AlignmentGeometry alignment,
  Color color,
  double height,
  double width,
  Widget child,
  EdgeInsets padding,
  Function onTap,
  Gradient gradient,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: alignment,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorStyles.black.withOpacity(0.5),
            offset: Offset(3, 3),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    ),
  );
}

Widget sharedContainer({
  AlignmentGeometry alignment,
  Color color,
  double height,
  double width,
  Widget child,
  EdgeInsets padding,
  Function onTap,
  Gradient gradient,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: alignment,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: child,
    ),
  );
}

Widget sharedDottedContainer({
  Alignment alignment,
  EdgeInsets padding,
  double width,
  double height,
  Gradient gradient,
  Color color,
  Color borderColor,
  Widget child,
  Function onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: DottedBorder(
      borderType: BorderType.RRect,
      strokeCap: StrokeCap.round,
      color: borderColor,
      dashPattern: [8, 4],
      strokeWidth: 2,
      radius: Radius.circular(10),
      padding: EdgeInsets.all(4),
      child: Container(
        alignment: alignment,
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: child,
      ),
    ),
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
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: ColorStyles.black,
        fontSize: SizeConfig.textSize(context, 4.5),
      ),
    ),
    subtitle: Text(
      subTitle,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: red ? ColorStyles.red : ColorStyles.green2,
        fontSize: SizeConfig.textSize(context, 3.5),
      ),
    ),
    trailing: RichText(
      textAlign: TextAlign.right,
      text: TextSpan(
        text: trailingText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: ColorStyles.grey2,
          fontSize: SizeConfig.textSize(context, 4.5),
        ),
        children: [
          TextSpan(
            text: "\n$trailingSubText",
            style: TextStyle(
              color: ColorStyles.black,
              fontSize: SizeConfig.textSize(context, 3.5),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget sharedInfoButton({
  @required BuildContext context,
  @required Widget icon,
  @required String text,
  @required Color background,
  Function onTap,
  bool showArrow = false,
  bool colorIcon = true,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 3),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(80),
      ),
      height: SizeConfig.yMargin(context, 8),
      child: Row(
        children: [
          Container(
            height: SizeConfig.yMargin(context, 5),
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.xMargin(context, 2),
            ),
            child: icon,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorIcon ? ColorStyles.grey7 : Colors.transparent,
            ),
          ),
          SizedBox(width: SizeConfig.xMargin(context, 1.5)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w500,
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 4.3),
              ),
            ),
          ),
          showArrow
              ? Icon(
                  Icons.arrow_forward_rounded,
                  color: ColorStyles.light,
                  size: SizeConfig.textSize(context, 8),
                )
              : Container(),
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
      labelStyle: TextStyle(
        fontSize: SizeConfig.textSize(context, 5),
        fontWeight: FontWeight.w500,
        color: const Color(0xFF18172B).withOpacity(0.6),
      ),
    ),
  );
}

Widget sharedIconButton({
  @required BuildContext context,
  @required Function onPressed,
  @required Widget icon,
}) {
  return ButtonTheme(
    minWidth: SizeConfig.xMargin(context, 10),
    child: IconButton(
      onPressed: onPressed,
      icon: icon,
    ),
  );
}

Widget sharedTable({
  @required BuildContext context,
  @required List list,
}) {
  return Table(
    children: List.generate(
      list.length,
      (index) => TableRow(
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Text(
              list[index][0],
              textAlign: TextAlign.left,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.textSize(context, 4.5),
                height: SizeConfig.textSize(context, 0.5),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Text(
              list[index][1],
              textAlign: TextAlign.right,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
                height: SizeConfig.textSize(context, 0.5),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget sharedSmallBadge({
  @required BuildContext context,
  @required String text,
  @required Color indicatorColor,
}) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        fontSize: SizeConfig.textSize(context, 3),
        color: ColorStyles.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.xMargin(context, 3),
      vertical: SizeConfig.yMargin(context, 1),
    ),
    decoration: BoxDecoration(
      color: indicatorColor,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
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
