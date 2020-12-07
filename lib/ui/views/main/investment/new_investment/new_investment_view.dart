import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/fund_length_options.dart';

class NewInvestmentView extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  NewInvestmentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> _pop() {
      context.bloc<NewInvestmentCubit>().reset();
      return Future.value(true);
    }

    return WillPopScope(
      onWillPop: _pop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorStyles.white,
          brightness: Brightness.light,
          centerTitle: false,
          iconTheme: IconThemeData(color: ColorStyles.black),
          title: Text(
            "New Investment",
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 16.tx),
              color: ColorStyles.black,
            ),
          ),
        ),
        body: BlocBuilder<NewInvestmentCubit, NewInvestmentState>(
          builder: (context, state) => state.isSubmitting
              ? sharedLoader()
              : Container(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.yMargin(context, 45.h),
                    horizontal: SizeConfig.xMargin(context, 5),
                  ),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: ListView(
                      children: [
                        SizedBox(height: SizeConfig.yMargin(context, 2)),
                        SharedTextFormField(
                          labelText: "Investment name",
                          initialValue: state.investmentProduct.investmentTitle,
                          readOnly: true,
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 3)),
                        SharedTextFormField(
                          labelText: "How much do you want to invest?",
                          initialValue:
                              state.amount == 0 ? "" : state.amount.toString(),
                          onChanged: (value) => context
                              .bloc<NewInvestmentCubit>()
                              .amountChanged(double.parse(value)),
                          validator: (value) {
                            double minAmount = double.parse(
                                state.investmentProduct.investmentAmount);
                            double maxAmount = double.parse(
                                state.investmentProduct.investmentMaxAmount);
                            if (state.amount < minAmount ||
                                state.amount > maxAmount)
                              return "Amount has to be between \n${minAmount.moneyFormat(2)} - ${maxAmount.moneyFormat(2)}";
                            return null;
                          },
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 35.h)),
                        Text(
                          "For how long would you like to hold your investment",
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.textSize(context, 14.tx),
                            color: ColorStyles.black,
                          ),
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 16.h)),
                        FundLengthOptions(
                          durations: state.durations,
                          select: state.duration,
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 45.h)),
                        sharedTable(
                          context: context,
                          list: [
                            [
                              "Investment amount",
                              "${state.amount.moneyFormat(2)}"
                            ],
                            ["Tenure", "${state.tenure} months"],
                            ["Investment date", state.investmentDate],
                            ["Maturity date", state.maturityDate],
                            [
                              "Interest rate",
                              "${state.investmentRate}% annually"
                            ],
                            ["Accrued Interest", "${state.accruedInterest}"],
                            ["Withholding tax", state.withholdingTax],
                            ["Maturity Value", state.maturityValue],
                          ],
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 60.h)),
                        sharedRaisedButton(
                          context: context,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              context.navigator.pushFundInvestmentView();
                            }
                          },
                          color: ColorStyles.blue,
                          text: "Proceed to funding",
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
