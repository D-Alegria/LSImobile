import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class FAQView extends StatefulWidget {
  @override
  _FAQViewState createState() => _FAQViewState();
}

class _FAQViewState extends State<FAQView> {
  final String faq = "assets/images/faq.png";
  bool show1, show2, show3;

  @override
  void initState() {
    super.initState();
    show1 = false;
    show2 = false;
    show3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.grey8,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.grey8,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
        title: Text(
          "Frequently Asked Questions",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 10)),
            ClipRRect(
              child: Image.asset(
                faq,
                fit: BoxFit.fill,
                height: SizeConfig.yMargin(context, 20),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 8)),
            Expanded(
              child: ListView(
                children: [
                  detailsBox(
                    context: context,
                    title: "How do I apply for a loan",
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam aliquam quam.",
                    ),
                    function: () {
                      setState(() {
                        show1 = !show1;
                      });
                    },
                    isSelected: show1,
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 3)),
                  detailsBox(
                    context: context,
                    title: "How to do something else",
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam aliquam quam.",
                    ),
                    function: () {
                      setState(() {
                        show2 = !show2;
                      });
                    },
                    isSelected: show2,
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 3)),
                  detailsBox(
                    context: context,
                    title: "How to do something else",
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam aliquam quam.",
                    ),
                    function: () {
                      setState(() {
                        show3 = !show3;
                      });
                    },
                    isSelected: show3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget detailsBox({
  Widget child,
  String title,
  bool isSelected,
  Function function,
  BuildContext context,
}) {
  return Container(
    child: InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
          vertical: SizeConfig.yMargin(context, 3.5),
        ),
        decoration: BoxDecoration(
          color: ColorStyles.white,
          border: Border.all(
            color: ColorStyles.grey5,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: GoogleFonts.workSans(fontWeight: FontWeight.bold),
                ),
                isSelected
                    ? Icon(
                        Icons.keyboard_arrow_up,
                        color: ColorStyles.black,
                      )
                    : Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorStyles.black,
                      )
              ],
            ),
            isSelected ? child : Container(),
          ],
        ),
      ),
    ),
  );
}
