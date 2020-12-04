import "package:auto_route/auto_route.dart";
import 'package:dotted_border/dotted_border.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_view/view_model/investment_view_cubit.dart'
    as ivc;
import 'package:lsi_mobile/ui/views/main/profile/view_models/accounts_cards/accounts_cards_bloc.dart'
    as acb;
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import 'const_color.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';

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
    height: SizeConfig.yMargin(context, 45.h),
    child: RaisedButton(
      onPressed: onPressed,
      color: color,
      child: Text(
        text,
        style: GoogleFonts.workSans(
          color: ColorStyles.white,
          fontSize: SizeConfig.textSize(context, 18.tx),
          fontWeight: FontWeight.w500,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 6,
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
  final String initialValue;
  final bool readOnly;

  const SharedTextFormField({
    Key key,
    @required this.labelText,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
    this.initialValue,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      style: GoogleFonts.workSans(
        height: SizeConfig.yMargin(context, 0.17),
        fontSize: SizeConfig.textSize(context, 16.tx),
        fontWeight: FontWeight.w500,
        color: ColorStyles.dark,
      ),
      cursorColor: ColorStyles.dark,
      decoration: textFieldDecoration.copyWith(
        labelText: labelText,
        labelStyle: GoogleFonts.workSans(
          fontSize: SizeConfig.textSize(context, 14.tx),
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
              color: firstText.isEmpty ? ColorStyles.red : ColorStyles.primary,
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
  EdgeInsets margin,
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
      margin: margin,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorStyles.black.withOpacity(0.3),
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
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
  Color iconBackgroundColor,
  Color textColor,
}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0),
    leading: CircleAvatar(
      radius: SizeConfig.textSize(context, 7),
      backgroundColor: iconBackgroundColor,
      child: icon,
    ),
    title: Text(
      title,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w400,
        color: ColorStyles.black,
        fontSize: SizeConfig.textSize(context, 5),
        height: SizeConfig.textSize(context, 0.4),
      ),
    ),
    subtitle: Text(
      subTitle,
      style: GoogleFonts.workSans(
        fontWeight: FontWeight.w400,
        color: textColor,
        fontSize: SizeConfig.textSize(context, 4),
      ),
    ),
    trailing: RichText(
      textAlign: TextAlign.right,
      text: TextSpan(
        text: trailingText,
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w400,
          color: ColorStyles.grey2,
          fontSize: SizeConfig.textSize(context, 5),
        ),
        children: [
          TextSpan(
            text: "\n$trailingSubText",
            style: GoogleFonts.workSans(
              color: ColorStyles.black,
              fontSize: SizeConfig.textSize(context, 4),
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
      height: SizeConfig.yMargin(context, 56.h),
      child: Row(
        children: [
          Container(
            height: SizeConfig.yMargin(context, 32.h),
            width: SizeConfig.xMargin(context, 32.w),
            alignment: Alignment.center,
            // padding: EdgeInsets.symmetric(
            //   horizontal: SizeConfig.xMargin(context, 8.w),
            // ),
            child: icon,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorIcon ? ColorStyles.lGrey : Colors.transparent,
            ),
          ),
          SizedBox(width: SizeConfig.xMargin(context, 6.w)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w500,
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 14.tx),
              ),
            ),
          ),
          showArrow
              ? Icon(
                  Icons.arrow_forward_rounded,
                  color: ColorStyles.light,
                  size: SizeConfig.textSize(context, 6),
                )
              : Container(),
        ],
      ),
    ),
  );
}

Widget sharedLoader() {
  return Container(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Widget sharedErrorWidget(BuildContext context, String message) {
  return Container(
    height: SizeConfig.yMargin(context, 80),
    child: ListView(
      children: [
        Container(
          height: SizeConfig.yMargin(context, 80),
          child: Center(
            child: Text(
              message,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w500,
                color: const Color(0xFF18172B).withOpacity(0.6),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget sharedDropDownFormField<T>({
  @required BuildContext context,
  @required String labelText,
  @required Function onChanged,
  Function validator,
  @required List<T> items,
  @required T value,
}) {
  return DropdownButtonFormField(
    value: value,
    items: items
        .map(
          (e) => DropdownMenuItem(
            child: Text(
              "$e",
              overflow: TextOverflow.visible,
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 16.tx),
                fontWeight: FontWeight.w500,
                color: ColorStyles.dark,
              ),
            ),
            value: e,
          ),
        )
        .toList(),
    icon: Icon(Icons.keyboard_arrow_down),
    isExpanded: true,
    validator: validator,
    onChanged: onChanged,
    decoration: textFieldDecoration.copyWith(
      labelText: labelText,
      labelStyle: GoogleFonts.workSans(
        fontSize: SizeConfig.textSize(context, 14.tx),
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
    minWidth: SizeConfig.xMargin(context, 12),
    child: IconButton(
      onPressed: onPressed,
      icon: icon,
    ),
  );
}

Widget sharedTable({
  @required BuildContext context,
  @required List list,
  bool red = true,
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
                fontSize: SizeConfig.textSize(context, 16.tx),
                height: SizeConfig.textSize(context, 0.5),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Text(
              list[index][1],
              textAlign: TextAlign.right,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                color: (red && index == (list.length - 1))
                    ? ColorStyles.red
                    : ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 16.tx),
                height: SizeConfig.textSize(context, 0.5),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Future<dynamic> showErrorSnackBar(BuildContext context, String message) {
  return FlushbarHelper.createError(
    message: message,
    duration: new Duration(seconds: 3),
  ).show(context);
}

Future<dynamic> showInfoSnackBar(BuildContext context, String message) {
  return FlushbarHelper.createInformation(
    message: message,
    duration: new Duration(seconds: 3),
  ).show(context);
}

Widget sharedSmallBadge({
  @required BuildContext context,
  @required String text,
  @required Color indicatorColor,
}) {
  return Container(
    alignment: Alignment.center,
    child: Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: SizeConfig.textSize(context, 10.tx),
        color: ColorStyles.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.xMargin(context, 3),
    ),
    height: SizeConfig.yMargin(context, 21.h),
    decoration: BoxDecoration(
      color: indicatorColor,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );
}

Widget processingBadge(BuildContext context) => sharedSmallBadge(
      context: context,
      text: "Processing",
      indicatorColor: ColorStyles.orange,
    );

Widget pendingBadge(BuildContext context) => sharedSmallBadge(
      context: context,
      text: "Pending",
      indicatorColor: ColorStyles.red,
    );

Widget activeBadge(BuildContext context) => sharedSmallBadge(
      context: context,
      text: "Active",
      indicatorColor: ColorStyles.green1,
    );

Widget rejectedBadge(BuildContext context) => sharedSmallBadge(
      context: context,
      text: "Rejected",
      indicatorColor: ColorStyles.red,
    );

Widget closedBadge(BuildContext context) => sharedSmallBadge(
      context: context,
      text: "Closed",
      indicatorColor: ColorStyles.blue,
    );

Widget dueBadge(BuildContext context, String amountDue) => sharedSmallBadge(
      context: context,
      text: "Due: $amountDue",
      indicatorColor: ColorStyles.red,
    );

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

class SharedDateTimeField extends StatefulWidget {
  final Function(String value) onChange;
  final String label;
  final String initialValue;

  SharedDateTimeField({
    Key key,
    this.onChange,
    this.label,
    this.initialValue,
  }) : super(key: key);

  @override
  _SharedDateTimeFieldState createState() => _SharedDateTimeFieldState();
}

class _SharedDateTimeFieldState extends State<SharedDateTimeField> {
  TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onTap: () async {
          final DateTime picked = await showDatePicker(
            context: context,
            initialDate: widget.initialValue.isEmpty
                ? DateTime.now()
                : DateTime(
                    int.parse(widget.initialValue.split('-')[0]),
                    int.parse(widget.initialValue.split('-')[1]),
                    int.parse(widget.initialValue.split('-')[2]),
                  ),
            firstDate: DateTime(1970),
            lastDate: DateTime(2300),
            builder: (BuildContext context, Widget child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: ColorStyles.blue,
                  accentColor: ColorStyles.blue,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                        primary: ColorStyles.blue,
                      ),
                  buttonTheme: ButtonThemeData(
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
                child: child,
              );
            },
          );
          if (picked != null) {
            initializeDateFormatting();
            DateFormat dateFormat = DateFormat("yyyy-MM-dd", 'en');
            controller
              ..text = dateFormat.format(picked)
              ..selection = TextSelection.fromPosition(TextPosition(
                  offset: controller.text.length,
                  affinity: TextAffinity.upstream));
            widget.onChange(dateFormat.format(picked));
          }
        },
        controller: controller,
        focusNode: AlwaysDisabledFocusNode(),
        style: GoogleFonts.workSans(
          height: SizeConfig.yMargin(context, 0.17),
          fontSize: SizeConfig.textSize(context, 16.tx),
          fontWeight: FontWeight.w500,
          color: ColorStyles.dark,
        ),
        cursorColor: ColorStyles.dark,
        decoration: textFieldDecoration.copyWith(
          labelText: widget.label,
          labelStyle: GoogleFonts.workSans(
            fontSize: SizeConfig.textSize(context, 14.tx),
            fontWeight: FontWeight.w500,
            color: const Color(0xFF18172B).withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class UserDetailsWrapper extends StatelessWidget {
  final Widget Function(Loaded userData) loaded;

  const UserDetailsWrapper({Key key, this.loaded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileCubit, UserProfileState>(
      builder: (context, state) => state.map(
        initial: (e) => Container(),
        loading: (e) => sharedLoader(),
        loaded: (e) => loaded(e),
        error: (e) => sharedErrorWidget(context, e.glitch.message),
      ),
      listener: (context, state) => state.maybeMap(
        error: (value) => value.glitch.maybeMap(
          orElse: () => null,
          unAuthenticatedGlitch: (e) {
            context.bloc<AuthenticationBloc>().add(LogoutRequest());
            return context.navigator.pushAndRemoveUntil(
              Routes.authWrapper,
              (route) => false,
            );
          },
        ),
        orElse: () => null,
      ),
    );
  }
}

class InvestmentWrapper extends StatelessWidget {
  final Widget Function(ivc.Loaded loaded) loaded;

  const InvestmentWrapper({Key key, this.loaded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ivc.InvestmentViewCubit, ivc.InvestmentViewState>(
      builder: (context, state) => state.map(
        initial: (e) => Container(),
        loading: (e) => sharedLoader(),
        loaded: (e) => loaded(e),
        error: (e) => sharedErrorWidget(context, e.message),
      ),
    );
  }
}

class AccountsCardsWrapper extends StatelessWidget {
  final Widget Function(acb.Loaded loaded) loaded;

  const AccountsCardsWrapper({Key key, this.loaded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<acb.AccountsCardsBloc, acb.AccountsCardsState>(
      builder: (context, state) => state.map(
        initial: (e) => Container(),
        loading: (e) => sharedLoader(),
        loaded: (e) => loaded(e),
        error: (e) => sharedErrorWidget(context, e.message),
      ),
    );
  }
}

class SharedWideButton extends StatelessWidget {
  final Widget image;
  final Color backgroundColor;
  final String text;
  final Function onTap;

  const SharedWideButton({
    Key key,
    this.image,
    this.backgroundColor,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.yMargin(context, 9),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: SizeConfig.xMargin(context, 5)),
            image,
            SizedBox(width: SizeConfig.xMargin(context, 2)),
            Text(
              text,
              style: GoogleFonts.workSans(
                color: backgroundColor,
                fontSize: SizeConfig.textSize(context, 5),
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void sharedBottomSheet(BuildContext context, Widget form) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: ColorStyles.black.withOpacity(0.2),
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: form,
        ),
      );
    },
  );
}
