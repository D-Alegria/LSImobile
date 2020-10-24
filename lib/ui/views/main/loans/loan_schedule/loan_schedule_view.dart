import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanScheduleView extends StatelessWidget {
  final String contactUsImg = "assets/images/contact_us.png";
  final String whatsappLogo = "assets/svgs/whatsapp_logo.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
        title: Text(
          "Loan Schedule",
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
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder(
                bottom: BorderSide(
                  color: ColorStyles.black.withOpacity(0.1),
                  width: 1,
                ),
              ),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'S/N\n',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(context, 5),
                          color: ColorStyles.blue,
                          height: SizeConfig.textSize(context, 0.3),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Amount\n',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(context, 5),
                          color: ColorStyles.blue,
                          height: SizeConfig.textSize(context, 0.3),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Paid\n',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(context, 5),
                          color: ColorStyles.blue,
                          height: SizeConfig.textSize(context, 0.3),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Table(
                    border: TableBorder(
                      bottom: BorderSide(
                        color: ColorStyles.black.withOpacity(0.1),
                        width: 1,
                      ),
                      horizontalInside: BorderSide(
                        color: ColorStyles.black.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    children: List.generate(
                      10,
                      (index) => _buildLoanScheduleItem(
                        context,
                        index,
                        10000,
                        index % 2 == 0 ? Paid.check : Paid.close,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildLoanScheduleItem(
      BuildContext context, int index, double amount, Paid paid) {
    return TableRow(
      children: [
        TableCell(
          child: Text(
            '\n${index + 1}/N\n',
            textAlign: TextAlign.left,
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
              height: SizeConfig.textSize(context, 0.4),
            ),
          ),
        ),
        TableCell(
          child: Text(
            '\n$amount\n',
            textAlign: TextAlign.left,
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
              height: SizeConfig.textSize(context, 0.4),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: getPaid(paid),
        ),
      ],
    );
  }
}

Widget getPaid(Paid paid) {
  switch (paid) {
    case Paid.check:
      return Icon(
        Icons.check_rounded,
        color: ColorStyles.green2,
      );
      break;
    case Paid.close:
      return Icon(
        Icons.close_rounded,
        color: ColorStyles.red,
      );
      break;
    default:
      return Text(
        '\n--\n',
        textAlign: TextAlign.left,
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w500,
          // fontSize: SizeConfig.textSize(context, 5),
          color: ColorStyles.black,
          // height: SizeConfig.textSize(context, 0.4),
        ),
      );
  }
}

enum Paid { check, close }
