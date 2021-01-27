import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
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
    Widget investmentCard(
            {BuildContext context, ca.Card card, Function onTap}) =>
        sharedTapToAddCard(
          context: context,
          onTap: onTap,
          card: card,
          width: SizeConfig.xMargin(context, 260.w),
        );

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
            fontSize: SizeConfig.textSize(context, 16.tx),
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
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Investment amount",
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.textSize(context, 16.tx),
                            color: ColorStyles.black,
                          ),
                        ),
                        Text(
                          state.amount.moneyFormat(2),
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.textSize(context, 16.tx),
                            color: ColorStyles.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 30.h)),
                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          Container(
                            height: SizeConfig.yMargin(context, 190.h),
                            width: SizeConfig.xMargin(context, 90),
                            padding: EdgeInsets.only(
                              left: SizeConfig.xMargin(context, 5),
                            ),
                            child: AccountsCardsWrapper(
                              loaded: ({accounts, cards}) => ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      var card = cards[index];
                                      return investmentCard(
                                        context: context,
                                        card: card,
                                        onTap: () {
                                          context
                                              .bloc<NewInvestmentCubit>()
                                              .cardChanged(card.cardId);
                                          sharedBottomSheet(
                                            context: context,
                                            form: AddCardForm(
                                              amount: state.amount.toString(),
                                              transaction: CardTransaction
                                                  .InvestmentPayment,
                                            ),
                                            isDismissible: true,
                                            height: 50,
                                          );
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: SizeConfig.xMargin(context, 15.w),
                                    ),
                                    itemCount: cards.length,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.xMargin(context, 15.w),
                                  ),
                                  sharedTapToAddCard(
                                    width: SizeConfig.xMargin(context, 260.w),
                                    context: context,
                                    card: ca.Card(
                                      expMonth: "**",
                                      expYear: "****",
                                      lastFourDigits: "****",
                                    ),
                                    onTap: () {
                                      sharedBottomSheet(
                                        context: context,
                                        form: AddCardForm(
                                          amount: state.amount.toString(),
                                          transaction:
                                              CardTransaction.InvestmentPayment,
                                        ),
                                        isDismissible: true,
                                        height: 50,
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: SizeConfig.xMargin(context, 15.w),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 29.h)),
                          Text(
                            "or",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textSize(context, 16.tx),
                              color: ColorStyles.black,
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 14.h)),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.xMargin(context, 5),
                            ),
                            child: Text(
                              "Make a transfer of exactly ${state.amount.moneyFormat(2)} from your  desired bank account to the one stated below. Funds will reflect in your investment plan instantly",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.textSize(context, 14.tx),
                                  color: ColorStyles.light,
                                  height: SizeConfig.textSize(context, 0.4),
                                  letterSpacing:
                                      SizeConfig.textSize(context, 0.15)),
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 21.h)),
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
                              red: false,
                            ),
                          ),
                          SizedBox(height: SizeConfig.yMargin(context, 66.h)),
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
