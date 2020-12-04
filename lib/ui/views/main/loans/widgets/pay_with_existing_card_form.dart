import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/make_payment/view_model/make_payment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/add_card_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/atm_card.dart';

class PayWithCardForm extends StatelessWidget {
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

    return BlocBuilder<MakePaymentCubit, MakePaymentState>(
      builder: (context, state) => Container(
        decoration: BoxDecoration(
          color: ColorStyles.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: SizeConfig.yMargin(context, 50),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: "Pay with card",
                  style: GoogleFonts.workSans(
                    color: ColorStyles.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    height: SizeConfig.textSize(context, 0.4),
                  ),
                  children: [
                    TextSpan(
                      text: "\nSelect a card below to pay with card",
                      style: GoogleFonts.workSans(
                        fontSize: SizeConfig.textSize(context, 4),
                        fontWeight: FontWeight.w500,
                        color: ColorStyles.dark.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              AccountsCardsWrapper(
                loaded: ({accounts, cards}) => Container(
                  height: SizeConfig.yMargin(context, 22),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      child: ATMCard(card: cards[index]),
                      onTap: () => _showForm(AddCardForm(
                        amount: FileReader.getAppConfig().paystackTestAmount,
                        // todo state.amount.toString(),
                        transaction: CardTransaction.LoanPayment,
                      )),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: SizeConfig.xMargin(context, 5),
                    ),
                    itemCount: cards.length,
                  ),
                ),
              ),
              Center(
                child: sharedOptionFlatButton(
                  context: context,
                  firstText: "",
                  secondText: "Cancel",
                  action: () => context.navigator.pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
