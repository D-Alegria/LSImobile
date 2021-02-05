import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class FAQView extends StatefulWidget {
  @override
  _FAQViewState createState() => _FAQViewState();
}

class _FAQViewState extends State<FAQView> {
  final String faq = "assets/images/faq.png";

  List faqs = FileReader.faq;

  List<bool> shows = List.filled(FileReader.faq.length, false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.grey8,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.grey8,
        brightness: Brightness.light,
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
        height: SizeConfig.yMargin(context, 100),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 10)),
            ClipRRect(
              child: Image.asset(
                faq,
                fit: BoxFit.fitHeight,
                height: SizeConfig.yMargin(context, 20),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 8)),
            for (int index = 0; index < faqs.length; index++)
              Column(
                children: [
                  detailsBox(
                    context: context,
                    title: faqs[index]["Q"],
                    child: faqs[index]["A"],
                    function: () {
                      setState(() {
                        shows[index] = !shows[index];
                      });
                    },
                    isSelected: shows[index],
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 3))
                ],
              ),
          ],
        ),
      ),
    );
  }
}

Widget detailsBox({
  List child,
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
                Flexible(
                  child: Text(
                    title,
                    softWrap: true,
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 4),
                      color: ColorStyles.black,
                    ),
                  ),
                ),
                isSelected
                    ? Icon(
                        Icons.keyboard_arrow_up,
                        color: ColorStyles.black,
                        size: SizeConfig.textSize(context, 9),
                      )
                    : Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorStyles.black,
                        size: SizeConfig.textSize(context, 9),
                      )
              ],
            ),
            isSelected
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      for (int i = 0; i < child.length; i++)
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.yMargin(context, 1)),
                          child: Text(
                            "${String.fromCharCode(97 + i)}) ${child[i]}",
                            softWrap: true,
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w500,
                              color: ColorStyles.grey2,
                              fontSize: SizeConfig.textSize(context, 3.8),
                            ),
                          ),
                        ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    ),
  );
}
