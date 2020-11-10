import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class FundInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: ColorStyles.grey6,
        iconTheme: IconThemeData(color: ColorStyles.black),
        centerTitle: false,
        title: Text(
          "Fund Investment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.xMargin(context, 5),
            ),
            alignment: Alignment.center,
            height: SizeConfig.yMargin(context, 10),
            decoration: BoxDecoration(
              color: ColorStyles.grey6,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Investment amount",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    color: ColorStyles.black,
                  ),
                ),
                Text(
                  "N200",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    color: ColorStyles.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 4)),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  Container(
                    height: SizeConfig.yMargin(context, 22),
                    padding: EdgeInsets.only(
                      left: SizeConfig.xMargin(context, 5),
                    ),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => sharedRaisedContainer(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.xMargin(context, 5),
                        ),
                        alignment: Alignment.centerLeft,
                        gradient: ColorStyles.lightBlueGradient,
                        width: SizeConfig.xMargin(context, 70),
                        child: RichText(
                          text: TextSpan(
                            text: "02/24",
                            style: TextStyle(
                              height: SizeConfig.textSize(context, 0.7),
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.textSize(context, 4),
                              color: ColorStyles.yellow,
                            ),
                            children: [
                              TextSpan(
                                text: "\n**** **** **** 1234",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.textSize(context, 5.5),
                                  color: ColorStyles.white,
                                ),
                              ),
                              TextSpan(
                                text: "\nTap to pay with this card",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.textSize(context, 4),
                                  color: ColorStyles.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: SizeConfig.xMargin(context, 5),
                      ),
                      itemCount: 5,
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 2)),
                  Text(
                    "or",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 5),
                      color: ColorStyles.black,
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 2)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 5),
                    ),
                    child: Text(
                      "Make a transfer of exactly N200,000 from your  desired bank account to the one stated below. Funds will reflect in your investment plan instantly",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textSize(context, 4.8),
                        color: ColorStyles.light,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 5),
                    ),
                    child: sharedTable(
                      context: context,
                      list: [
                        ["Bank name", "Polaris Bank limited"],
                        ["Account number", "4010009063"],
                        ["Account name", "Bolanle Omolayo"],
                        ["Beneficiary", "Customer Name"],
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 2)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 30),
                    ),
                    child: sharedRaisedButton(
                      context: context,
                      onPressed: () => context.navigator.pushSuccessView(
                        message: "You have successfully funded your investment",
                        buttonText: "Back to Investment",
                        onTap: () => context.navigator.pushAndRemoveUntil(
                          Routes.mainView,
                          (route) => false,
                          arguments: MainViewArguments(pageNumber: 2),
                        ),
                      ),
                      color: ColorStyles.blue,
                      text: "Finish",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
