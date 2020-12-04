import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart' as ca;
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/add_card_form.dart';

class FundInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget addCard(BuildContext context) {
      return sharedRaisedContainer(
        onTap: () {
          sharedBottomSheet(
            context,
            AddCardForm(
              amount: FileReader.getAppConfig().paystackTestAmount,
              transaction: CardTransaction.AddNewCardFundInvestment,
            ),
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        margin: EdgeInsets.only(
          left: SizeConfig.xMargin(context, 5),
        ),
        alignment: Alignment.centerLeft,
        color: ColorStyles.extraLight,
        width: SizeConfig.xMargin(context, 75),
        child: Center(
          child: Text(
            "Tap To Add Your Card",
            style: GoogleFonts.workSans(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
            ),
          ),
        ),
      );
    }

    Widget investmentCard(BuildContext context, ca.Card card, String amount) {
      return sharedRaisedContainer(
        onTap: () {
          context.bloc<NewInvestmentCubit>().cardChanged(card.cardId);
          sharedBottomSheet(
            context,
            AddCardForm(
              amount: amount,
              transaction: CardTransaction.InvestmentPayment,
            ),
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        alignment: Alignment.centerLeft,
        gradient: ColorStyles.lightBlueGradient,
        width: SizeConfig.xMargin(context, 75),
        child: RichText(
          text: TextSpan(
            text: "${card.expMonth}/${card.expYear.substring(2)}",
            style: GoogleFonts.workSans(
              height: SizeConfig.textSize(context, 0.7),
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textSize(context, 4),
              color: ColorStyles.yellow,
            ),
            children: [
              TextSpan(
                text: "\n**** **** **** ${card.lastFourDigits}",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(context, 6),
                  color: ColorStyles.white,
                ),
              ),
              TextSpan(
                text: "\nTap to pay with this card",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textSize(context, 4),
                  color: ColorStyles.white,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: ColorStyles.grey6,
        iconTheme: IconThemeData(color: ColorStyles.black),
        centerTitle: false,
        title: Text(
          "Fund Investment",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: BlocConsumer<NewInvestmentCubit, NewInvestmentState>(
        builder: (context, state) => state.isSubmitting
            ? sharedLoader()
            : Column(
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
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.textSize(context, 5),
                            color: ColorStyles.black,
                          ),
                        ),
                        Text(
                          state.amount.moneyFormat(2),
                          style: GoogleFonts.roboto(
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
                            child: AccountsCardsWrapper(
                              loaded: (loaded) => ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var card = loaded.cards[index];
                                      return investmentCard(
                                          context,
                                          card,
                                          FileReader.getAppConfig()
                                              .paystackTestAmount // todo state.amount.toString(),
                                          );
                                    },
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: SizeConfig.xMargin(context, 5),
                                    ),
                                    itemCount: loaded.cards.length,
                                  ),
                                  addCard(context),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 2)),
                          Text(
                            "or",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.workSans(
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
                              "Make a transfer of exactly ${state.amount.moneyFormat(2)} from your  desired bank account to the one stated below. Funds will reflect in your investment plan instantly",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textSize(context, 4.3),
                                color: ColorStyles.light,
                                height: SizeConfig.textSize(context, 0.35),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.yMargin(context, 2),
                              horizontal: SizeConfig.xMargin(context, 5),
                            ),
                            child: sharedTable(
                              context: context,
                              list: [
                                ["Bank name", "Polaris Bank limited"],
                                ["Account number", "4010009063"],
                                ["Account name", "Initiative Finance Ltd."],
                              ],
                              red: false,
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 6)),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.xMargin(context, 30),
                            ),
                            child: sharedRaisedButton(
                              context: context,
                              onPressed: () => context
                                  .bloc<NewInvestmentCubit>()
                                  .completeInvestment(),
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
        listener: (context, state) => state.submitFailureOrSuccess.fold(
          () => null,
          (result) => result.fold(
            (failure) => showErrorSnackBar(context, failure.message),
            (success) {
              context.bloc<NewInvestmentCubit>().reset();
              return context.navigator.pushAndRemoveUntil(
                Routes.successView,
                (routes) => false,
                arguments: SuccessViewArguments(
                  message: "You have successfully funded your investment",
                  buttonText: "Back to Investment",
                  onTap: () {
                    return ExtendedNavigator.root.pushAndRemoveUntil(
                      Routes.mainView,
                      (route) => false,
                      arguments: MainViewArguments(pageNumber: 2),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
