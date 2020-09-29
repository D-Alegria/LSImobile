import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';

class LoanHistory extends StatelessWidget {
  const LoanHistory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Loan History",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.dark,
                  fontSize: SizeConfig.textSize(context, 4.7),
                ),
              ),
              Text(
                "See all",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w600,
                  color: ColorStyles.blue,
                  fontSize: SizeConfig.textSize(context, 4.7),
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.yMargin(context, 1),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return loanHistoryTile(context);
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  ListTile loanHistoryTile(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: CircleAvatar(
        backgroundColor: ColorStyles.green2.withOpacity(0.2),
        child: Icon(
          Icons.check,
          size: SizeConfig.textSize(context, 7),
          color: ColorStyles.green1,
        ),
      ),
      title: Text(
        "300,000",
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w400,
          color: ColorStyles.black,
          fontSize: SizeConfig.textSize(context, 4.5),
        ),
      ),
      subtitle: Text(
        "Completed",
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w400,
          color: ColorStyles.green2,
          fontSize: SizeConfig.textSize(context, 3.5),
        ),
      ),
      trailing: RichText(
        textAlign: TextAlign.right,
        text: TextSpan(
          text: "14%",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w400,
            color: ColorStyles.grey2,
            fontSize: SizeConfig.textSize(context, 4.5),
          ),
          children: [
            TextSpan(
              text: "\n3 months",
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
}