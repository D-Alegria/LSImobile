import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart' as ca;
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/add_account_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/add_card_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/atm_card.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/bank_account_card.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';

class AccountsCardsView extends StatefulWidget {
  @override
  _AccountsCardsViewState createState() => _AccountsCardsViewState();
}

class _AccountsCardsViewState extends State<AccountsCardsView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AccountsCardsWrapper(
      loaded: ({accounts, cards}) => ProfileForm(
        tabController: _tabController,
        title: "Account & Cards",
        tabs: ["Bank Accounts", "Cards"],
        form: TabBarView(
          children: [
            buildBankAccountsView(accounts, context),
            buildCardsView(cards, context),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget buildCardsView(List<ca.Card> cards, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: ListView(
        children: [
          SizedBox(height: SizeConfig.yMargin(context, 48.h)),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              var card = cards[index];
              return Padding(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.yMargin(context, 20.h),
                ),
                child: ATMCard(card: card),
              );
            },
          ),
          sharedTapToAddCard(
            context: context,
            card: ca.Card(
              expMonth: "**",
              expYear: "****",
              lastFourDigits: "****",
            ),
            gradient: ColorStyles.lightGradient,
            onTap: () => sharedBottomSheet(
              context: context,
              form: AddCardForm(
                amount: FileReader.getAppConfig().paystackTestAmount,
                transaction: CardTransaction.AddNewCard,
              ),
              isDismissible: true,
              height: 50,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 30.h)),
        ],
      ),
    );
  }

  Widget buildBankAccountsView(List<Account> accounts, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: ListView(
        children: [
          SizedBox(height: SizeConfig.yMargin(context, 52.h)),
          ListView.builder(
            itemCount: accounts.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var account = accounts[index];
              return Padding(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.yMargin(context, 20.h),
                ),
                child: BankAccountCard(
                  accountName: account.accountName,
                  accountNumber: account.accountNumber,
                  bankName: account.bankName,
                ),
              );
            },
          ),
          sharedAddCardContainer(
            context: context,
            onTap: () => sharedBottomSheet(
              context: context,
              form: AddAccountForm(),
              isDismissible: true,
              height: 60,
            ),
          ),
          SizedBox(height: SizeConfig.yMargin(context, 30.h)),
        ],
      ),
    );
  }
}
