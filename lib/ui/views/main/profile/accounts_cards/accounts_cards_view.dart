import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/accounts_cards/accounts_cards_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccountsCardsBloc>()
        ..add(AccountsCardsEvent.getUserBankDetails()),
      child: BlocConsumer<AccountsCardsBloc, AccountsCardsState>(
        builder: (context, state) => ProfileForm(
          tabController: _tabController,
          title: "Account & Cards",
          tabs: ["Bank Accounts", "Cards"],
          form: state.map(
            initial: (e) => Container(),
            loading: (e) => sharedLoader(),
            loaded: (e) => TabBarView(
              children: [
                buildBankAccountsView(e, context),
                buildCardsView(e, context),
              ],
              controller: _tabController,
            ),
            error: (e) => Container(
              child: Center(
                child: Text(e.message),
              ),
            ),
          ),
        ),
        listener: (context, state) => null,
      ),
    );
  }

  Widget buildCardsView(Loaded e, BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: SizeConfig.yMargin(context, 4)),
        ListView.separated(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: e.cards.length,
          itemBuilder: (context, index) {
            var card = e.cards[index];
            return ATMCard(card: card);
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: SizeConfig.yMargin(context, 4)),
        ),
        buildEmptyContainer(
          context: context,
          onTap: () => _showForm(AddCardForm()),
        ),
      ],
    );
  }

  Widget buildEmptyContainer({BuildContext context, Function onTap}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.yMargin(context, 2)),
      alignment: Alignment.topCenter,
      child: sharedDottedContainer(
        color: Colors.transparent,
        child: Icon(
          Icons.add_outlined,
          size: SizeConfig.textSize(context, 10),
        ),
        alignment: Alignment.center,
        height: SizeConfig.yMargin(context, 18),
        borderColor: ColorStyles.grey5,
        onTap: onTap,
      ),
    );
  }

  Widget buildBankAccountsView(Loaded e, BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: SizeConfig.yMargin(context, 4)),
        ListView.separated(
          itemCount: e.accounts.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            var account = e.accounts[index];
            return BankAccountCard(
              accountName: account.accountName,
              accountNumber: account.accountNumber,
              bankName: account.bankName,
            );
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: SizeConfig.yMargin(context, 2)),
        ),
        buildEmptyContainer(
          context: context,
          onTap: () => _showForm(AddAccountForm()),
        ),
      ],
    );
  }
}
