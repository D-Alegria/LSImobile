import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

import 'view_model/recent_transaction_cubit.dart';

class HistoryView extends StatelessWidget {
  final String optionsIcon = "assets/svgs/icons/options_icon.svg";
  final String arrowUp = "assets/svgs/icons/arrow_up.svg";
  final String arrowDown = "assets/svgs/icons/arrow_down.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        title: Text(
          "Transaction History",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
        actions: [
          ButtonTheme(
            minWidth: SizeConfig.xMargin(context, 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                optionsIcon,
              ),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => Future.value(
            context.bloc<RecentTransactionCubit>().getRecentTransactions()),
        child: BlocBuilder<RecentTransactionCubit, RecentTransactionState>(
          builder: (context, state) => state.map(
            initial: (e) => Container(),
            loading: (e) => sharedLoader(),
            loaded: (e) => _buildHistoryView(context, e),
            error: (e) => sharedErrorWidget(context, e.message),
          ),
        ),
      ),
    );
  }

  Container _buildHistoryView(BuildContext context, Loaded e) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: e.recentTransactions.isEmpty
          ? sharedErrorWidget(context, "No Transactions Found")
          : ListView.builder(
              itemBuilder: (context, index) {
                var transaction = e.recentTransactions[index];
                var time = Jiffy(
                    transaction.transDate.substring(0, 19), "yyyy-MM-dd H:m:s")
                  ..startOf(Units.DAY);

                if (transaction.transType == '1') {
                  return sharedInfoListTile(
                    icon: SvgPicture.asset(arrowUp),
                    context: context,
                    title: transaction.narrationCustomer,
                    subTitle: "Debit",
                    trailingText: "₦${transaction.transAmount}",
                    trailingSubText: time.fromNow(),
                    iconBackgroundColor: ColorStyles.red.withOpacity(0.2),
                    textColor: ColorStyles.red,
                  );
                } else {
                  return sharedInfoListTile(
                    icon: SvgPicture.asset(arrowDown),
                    context: context,
                    title: transaction.narrationCustomer,
                    subTitle: "Credit",
                    trailingText: "₦${transaction.transAmount}",
                    trailingSubText: time.fromNow(),
                    iconBackgroundColor: ColorStyles.green1.withOpacity(0.2),
                    textColor: ColorStyles.green1,
                  );
                }
              },
              itemCount: e.recentTransactions.length,
            ),
    );
  }
}
