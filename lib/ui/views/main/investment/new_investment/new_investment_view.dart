import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_bloc.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/fund_length_options.dart';

class NewInvestmentView extends StatelessWidget {
  final InvestmentProduct investmentProduct;

  const NewInvestmentView({Key key, @required this.investmentProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        builder: (context, state) => Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.xMargin(context, 5),
          ),
          child: ListView(
            children: [
              SizedBox(height: SizeConfig.yMargin(context, 2)),
              SharedTextFormField(
                labelText: "Investment name",
              ),
              SizedBox(height: SizeConfig.yMargin(context, 3)),
              SharedTextFormField(
                labelText: "How much do you want to invest?",
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
              FundLengthOptions(),
              SizedBox(height: SizeConfig.yMargin(context, 2)),
              sharedTable(
                context: context,
                list: [
                  ["Investment amount", "N200,000"],
                  ["Tenure", investmentProduct.tenor],
                  ["Investment date", "Sep 04, 2020"],
                  ["Maturity date", "Mar 04, 2021"],
                  ["Interest rate", "14.0% annually"],
                  ["Accrued Interest", "N14,500"],
                  ["Withholding tax", "0"],
                  ["Maturity Value", "N213,050"],
                ],
              ),
              SizedBox(height: SizeConfig.yMargin(context, 3)),
              sharedRaisedButton(
                context: context,
                onPressed: () => context.navigator.pushFundInvestmentView(),
                color: ColorStyles.blue,
                text: "Proceed to funding",
              )
            ],
          ),
        ),
        listener: (context, state) => null,
      ),
    );
  }
}
