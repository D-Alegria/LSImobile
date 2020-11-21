import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart' as ca;
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/add_card_form.dart';

class FundInvestmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showForm(Widget form) {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: ColorStyles.black.withOpacity(0.2),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: form,
            ),
          );
        },
      );
    }

    Widget investmentCard(BuildContext context, ca.Card card, String amount) {
      return sharedRaisedContainer(
        onTap: () {
          context.bloc<NewInvestmentCubit>().cardChanged(card.cardId);
          _showForm(AddCardForm(
            amount: amount,
            transaction: CardTransaction.InvestmentPayment,
          ));
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
            style: TextStyle(
              height: SizeConfig.textSize(context, 0.7),
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textSize(context, 4),
              color: ColorStyles.yellow,
            ),
            children: [
              TextSpan(
                text: "\n**** **** **** ${card.lastFourDigits}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(context, 6),
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
          style: TextStyle(
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
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.textSize(context, 5),
                            color: ColorStyles.black,
                          ),
                        ),
                        Text(
                          state.amount.moneyFormat,
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
                            child: AccountsCardsWrapper(
                              loaded: (loaded) => ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var card = loaded.cards[index];
                                  return investmentCard(context, card,
                                      '0.01' // todo state.amount.toString(),
                                      );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  width: SizeConfig.xMargin(context, 5),
                                ),
                                itemCount: loaded.cards.length,
                              ),
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
                              "Make a transfer of exactly ${state.amount.moneyFormat} from your  desired bank account to the one stated below. Funds will reflect in your investment plan instantly",
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
                                ["Account name", "Initiative Finance Ltd."],
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
