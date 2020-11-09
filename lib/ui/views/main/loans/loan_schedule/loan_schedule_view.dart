import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_schedule/view_model/loan_schedule_cubit.dart';

class LoanScheduleView extends StatefulWidget {
  final String requestId;

  const LoanScheduleView({Key key, @required this.requestId}) : super(key: key);

  @override
  _LoanScheduleViewState createState() => _LoanScheduleViewState();
}

class _LoanScheduleViewState extends State<LoanScheduleView> {
  final String contactUsImg = "assets/images/contact_us.png";

  final String whatsappLogo = "assets/svgs/whatsapp_logo.svg";

  @override
  void initState() {
    context.bloc<LoanScheduleCubit>().getLoanSchedule(widget.requestId);
    super.initState();
  }

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
      body: BlocBuilder<LoanScheduleCubit, LoanScheduleState>(
        builder: (context, state) => state.map(
          initial: (e) => Container(),
          loading: (e) => sharedLoader(),
          loaded: (e) => Container(
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
                          e.schedule.length,
                          (index) => _buildLoanScheduleItem(
                            context,
                            index,
                            e.schedule.length.toString(),
                            e.schedule[index].termRepayment,
                            e.schedule[index].isPaid == "0"
                                ? Paid.close
                                : Paid.check,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          error: (e) => sharedErrorWidget(context, e.message),
        ),
      ),
    );
  }

  TableRow _buildLoanScheduleItem(
      BuildContext context, int index, String total, String amount, Paid paid) {
    return TableRow(
      children: [
        TableCell(
          child: Text(
            '\n${index + 1}/$total\n',
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
