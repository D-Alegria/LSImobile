import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_plan/view_model/rollover_investment/rollover_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/investment_plan_card.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/round_button.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/terminate_form.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/withdraw_form.dart';

class InvestmentPlanView extends StatelessWidget {
  final String book = "assets/svgs/book.svg";
  final String withdraw = "assets/svgs/withdraw.svg";
  final String download = "assets/svgs/download.svg";
  final String rollover = "assets/svgs/rollover.svg";
  final Investment investment;

  const InvestmentPlanView({Key key, @required this.investment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showConfirmForm() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return BlocProvider(
            create: (context) => getIt<RolloverFormCubit>(),
            child: BlocConsumer<RolloverFormCubit, RolloverFormState>(
              builder: (context, state) => AlertDialog(
                title: Text(
                  'RollOver Investment',
                  style: GoogleFonts.workSans(
                    fontSize: SizeConfig.textSize(context, 4),
                    fontWeight: FontWeight.w400,
                    color: ColorStyles.dark,
                  ),
                ),
                content: SingleChildScrollView(
                  child: state.isSubmitting
                      ? sharedLoader()
                      : ListBody(
                          children: <Widget>[
                            Text(
                              'Are you sure you want to rollover this investment?',
                              style: GoogleFonts.workSans(
                                fontSize: SizeConfig.textSize(context, 4),
                                fontWeight: FontWeight.w400,
                                color: ColorStyles.dark,
                              ),
                            )
                          ],
                        ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text(
                      'No',
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 4),
                        fontWeight: FontWeight.w400,
                        color: ColorStyles.dark,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  TextButton(
                    child: Text(
                      'Yes',
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 4),
                        fontWeight: FontWeight.w400,
                        color: ColorStyles.dark,
                      ),
                    ),
                    onPressed: () => context.bloc<RolloverFormCubit>().rollover(
                          planId: investment.investmentProductId,
                          duration: investment.requestTenor,
                        ),
                  ),
                ],
              ),
              listener: (context, state) => state.submitFailureOrSuccess.fold(
                () => null,
                (either) => either.fold(
                  (l) => showErrorSnackBar(context, l.message),
                  (r) => context.navigator.pop(),
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        brightness: Brightness.light,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: ListView(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            Text(
              investment.investmentTitle,
              style: GoogleFonts.workSans(
                color: ColorStyles.black,
                fontSize: SizeConfig.textSize(context, 18.tx),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            InvestmentPlanCard(investment: investment),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundButton(
                  onTap: () {
                    if (investment.isActive == "1") {
                      sharedBottomSheet(
                        context: context,
                        form: WithdrawForm(investment: investment),
                        height: 470.h,
                      );
                    } else {
                      showInfoSnackBar(context,
                          'You can\'t withdraw from a non Active Investment');
                    }
                  },
                  text: "Withdraw",
                  background: investment.isActive == "1"
                      ? ColorStyles.orange
                      : ColorStyles.grey,
                  icon: SvgPicture.asset(
                    withdraw,
                    color: investment.isActive == "1"
                        ? ColorStyles.orange
                        : ColorStyles.grey,
                    width: SizeConfig.textSize(context, 6),
                  ),
                ),
                RoundButton(
                  onTap: () {
                    if (investment.isActive == "1") {
                      _showConfirmForm();
                    } else {
                      showInfoSnackBar(context,
                          'You can\'t rollover a non Active Investment');
                    }
                  },
                  text: "Rollover",
                  background: investment.isActive == "1"
                      ? ColorStyles.blue
                      : ColorStyles.grey,
                  icon: SvgPicture.asset(
                    rollover,
                    color: investment.isActive == "1"
                        ? ColorStyles.blue
                        : ColorStyles.grey,
                    width: SizeConfig.textSize(context, 4),
                  ),
                ),
                RoundButton(
                  onTap: () {
                    if (investment.isActive == "1") {
                      sharedBottomSheet(
                        context: context,
                        form: TerminateForm(
                          planId: investment.investmentProductId,
                          amount: investment.requestPrincipal,
                        ),
                        height: 400.h,
                      );
                    } else {
                      showInfoSnackBar(context,
                          'You can\'t terminate a non Active Investment');
                    }
                  },
                  text: "Terminate",
                  background: investment.isActive == "1"
                      ? ColorStyles.red
                      : ColorStyles.grey,
                  icon: Icon(
                    Icons.close,
                    color: investment.isActive == "1"
                        ? ColorStyles.red
                        : ColorStyles.grey,
                    size: SizeConfig.textSize(context, 6),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            SharedWideButton(
              backgroundColor: ColorStyles.green2.withOpacity(0.1),
              textColor: ColorStyles.green2,
              text: "Download Investment Advice",
              onTap: () {},
              image: SvgPicture.asset(
                download,
                height: SizeConfig.textSize(context, 7),
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 1.5)),
            SharedWideButton(
              backgroundColor: ColorStyles.blue.withOpacity(0.1),
              textColor: ColorStyles.blue,
              text: "My statement",
              onTap: () => FlushbarHelper.createInformation(
                message:
                    "The statement has been sent successfully to your email",
                duration: new Duration(seconds: 5),
              ).show(context),
              image: SvgPicture.asset(
                book,
                height: SizeConfig.textSize(context, 7),
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 2)),
            sharedTable(
              context: context,
              list: [
                [
                  "Investment amount",
                  double.parse(investment.requestPrincipal).moneyFormat(2)
                ],
                [
                  "Tenure",
                  "${investment.requestTenor} ${investment.loanDuration}"
                ],
                ["Investment date", Jiffy(investment.fundsReceivedDate).yMMMd],
                ["Maturity date", Jiffy(investment.maturityDate).yMMMd],
                [
                  "Interest rate",
                  "${investment.requestRate} ${investment.interestDuration}"
                ],
                [
                  "Accrued Interest",
                  double.parse(investment.totalInterests).moneyFormat(2)
                ],
                ["Withholding tax", "0"],
                [
                  "Maturity Value",
                  double.parse(investment.maturityValue).moneyFormat(2)
                ],
              ],
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
          ],
        ),
      ),
    );
  }
}
