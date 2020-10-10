import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanForm extends StatelessWidget {
  final String title;
  final Widget form;

  const LoanForm({
    Key key,
    @required this.title,
    @required this.form,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.primaryBlue,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: ColorStyles.primaryBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: ColorStyles.primaryGradient,
        ),
        height: SizeConfig.yMargin(context, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, title),
            Expanded(child: formContainer(context, form)),
          ],
        ),
      ),
    );
  }

  Widget formContainer(BuildContext context, Widget form) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      // height: SizeConfig.yMargin(context, 70),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: form,
    );
  }

  Widget header(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.xMargin(context, 5)),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textSize(context, 8),
          color: ColorStyles.white,
        ),
      ),
    );
  }
}
