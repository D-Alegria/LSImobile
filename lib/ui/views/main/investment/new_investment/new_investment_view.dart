import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_bloc.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/fund_length_options.dart';

class NewInvestmentView extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  NewInvestmentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Future<bool> _pop() {
    //   context.bloc<NewInvestmentBloc>().add(Restart());
    //   return Future.value(true);
    // }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        brightness: Brightness.light,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
        title: Text(
          "New Investment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: BlocConsumer<NewInvestmentBloc, NewInvestmentState>(
        builder: (context, state) => state.isSubmitting
            ? sharedLoader()
            : Container(
                padding: EdgeInsets.symmetric(
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
                            .bloc<NewInvestmentBloc>()
                            .add(AmountChanged(double.parse(value))),
                        validator: (value) {
                          double minAmount = double.parse(
                              state.investmentProduct.investmentAmount);
                          double maxAmount = double.parse(
                              state.investmentProduct.investmentMaxAmount);
                          if (state.amount < minAmount ||
                              state.amount > maxAmount)
                            return "Amount has to be between \n${minAmount.moneyFormat} - ${maxAmount.moneyFormat}";
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      Text(
                        "For how long would you like to hold your investment",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textSize(context, 4.3),
                          color: ColorStyles.black,
                        ),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      FundLengthOptions(
                        durations: state.durations,
                        select: state.duration,
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2)),
                      sharedTable(
                        context: context,
                        list: [
                          ["Investment amount", "${state.amount.moneyFormat}"],
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
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      sharedRaisedButton(
                        context: context,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            return context
                                .bloc<NewInvestmentBloc>()
                                .add(ProceedToFunding());
                          }
                        },
                        color: ColorStyles.blue,
                        text: "Proceed to funding",
                      )
                    ],
                  ),
                ),
              ),
        listener: (context, state) => state.submitFailureOrSuccess.fold(
          () => null,
          (result) => result.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.message,
              duration: new Duration(seconds: 3),
            ).show(context),
            (success) => context.navigator.pushFundInvestmentView(),
          ),
        ),
      ),
    );
  }
}
