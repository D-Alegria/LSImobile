import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
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
    return ProfileForm(
      tabController: _tabController,
      title: "Account & Cards",
      tabs: ["Bank Accounts", "Cards"],
      form: Form(
        child: TabBarView(
          children: [
            ListView(
              children: [
                SizedBox(height: SizeConfig.yMargin(context, 4)),
                BankAccountCard(),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                sharedDottedContainer(
                  color: Colors.transparent,
                  child: Icon(
                    Icons.add_outlined,
                    size: SizeConfig.textSize(context, 10),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.yMargin(context, 18),
                  borderColor: ColorStyles.grey5,
                )
              ],
            ),
            ListView(
              children: [
                SizedBox(height: SizeConfig.yMargin(context, 4)),
                ATMCard(),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                sharedDottedContainer(
                  color: Colors.transparent,
                  child: Icon(
                    Icons.add_outlined,
                    size: SizeConfig.textSize(context, 10),
                  ),
                  alignment: Alignment.center,
                  height: SizeConfig.yMargin(context, 18),
                  borderColor: ColorStyles.grey5,
                )
              ],
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
