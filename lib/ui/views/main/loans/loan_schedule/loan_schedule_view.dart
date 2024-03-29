import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
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
            fontSize: SizeConfig.textSize(context, 16.tx),
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
            margin: EdgeInsets.only(top: SizeConfig.yMargin(context, 60.h)),
            child: Column(
              children: [
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(3),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(3),
                  },
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
                          child: SizedBox(
                            height: SizeConfig.yMargin(context, 4),
                            child: Text(
                              'S/N',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textSize(context, 4.5),
                                color: ColorStyles.blue,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: SizeConfig.yMargin(context, 4),
                            child: Text(
                              'Amount',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textSize(context, 16.tx),
                                color: ColorStyles.blue,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: SizeConfig.yMargin(context, 4),
                            child: Text(
                              'Paid',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textSize(context, 16.tx),
                                color: ColorStyles.blue,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: SizedBox(
                            height: SizeConfig.yMargin(context, 4),
                            child: Text(
                              'Due Date',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textSize(context, 16.tx),
                                color: ColorStyles.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: e.schedule.length == 0
                      ? Container(
                          child: Center(
                            child: Text(
                              "Schedule will be available once loan is Active",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: ColorStyles.black,
                                fontSize: SizeConfig.textSize(context, 17.tx),
                              ),
                            ),
                          ),
                        )
                      : ListView(
                          children: [
                            Table(
                              columnWidths: {
                                0: FlexColumnWidth(2),
                                1: FlexColumnWidth(3),
                                2: FlexColumnWidth(2),
                                3: FlexColumnWidth(3),
                              },
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
                                (index) {
                                  var schedule = e.schedule[index];
                                  var paid;
                                  var repaymentDate =
                                      schedule.repaymentDate.split('-');
                                  DateTime date = DateTime(
                                    int.parse(repaymentDate[0]),
                                    int.parse(repaymentDate[1]),
                                    int.parse(repaymentDate[2]),
                                  );

                                  if (schedule.isPaid != "0") {
                                    paid = Paid.check;
                                  } else {
                                    if (DateTime.now().isAfter(date)) {
                                      paid = Paid.close;
                                    } else {
                                      paid = null;
                                    }
                                  }

                                  return _buildLoanScheduleItem(
                                    context,
                                    index,
                                    e.schedule.length.toString(),
                                    schedule.termRepayment,
                                    paid,
                                    schedule.repaymentDate,
                                  );
                                },
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

  TableRow _buildLoanScheduleItem(BuildContext context, int index, String total,
      String amount, Paid paid, String date) {
    return TableRow(
      children: [
        TableCell(
          child: SizedBox(
            height: SizeConfig.yMargin(context, 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${index + 1}/$total',
                textAlign: TextAlign.left,
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textSize(context, 16.tx),
                  color: ColorStyles.black,
                ),
              ),
            ),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: SizeConfig.yMargin(context, 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                double.parse(amount).moneyFormat(2),
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  textBaseline: TextBaseline.ideographic,
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textSize(context, 16.tx),
                  color: ColorStyles.black,
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: SizeConfig.yMargin(context, 6),
            child: getPaid(paid),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: SizeConfig.yMargin(context, 6),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textSize(context, 16.tx),
                  color: ColorStyles.black,
                ),
              ),
            ),
          ),
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
      return Icon(
        Icons.remove,
        color: ColorStyles.grey,
      );
  }
}

enum Paid { check, close }
