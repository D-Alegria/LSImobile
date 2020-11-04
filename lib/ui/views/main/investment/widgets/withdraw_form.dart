import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/bank_account_card.dart';
import 'package:lsi_mobile/ui/views/main/loans/view_model/provide_bvn/provide_bvn_bloc.dart';


class WithdrawForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProvideBvnBloc(),
      child: BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
        listener: (context, state) {
          state.verifyBVNFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => null,
              (r) => context.navigator.pushPersonalInfoFormView(),
            ),
          );
        },
        builder: (context, state) => Container(
          decoration: BoxDecoration(
            color: ColorStyles.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: SizeConfig.yMargin(context, 63),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.xMargin(context, 5),
          ),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.yMargin(context, 3),
                ),
                RichText(
                  text: TextSpan(
                    text: "Withdraw",
                    style: TextStyle(
                      color: ColorStyles.dark,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 5),
                      height: SizeConfig.textSize(context, 0.5),
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\nSelect account to withdraw specified amount to",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorStyles.dark.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 3)),
                SharedTextFormField(
                  labelText: "Enter amount",
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                Container(
                  height: SizeConfig.yMargin(context, 22),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => BankAccountCard(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: SizeConfig.xMargin(context, 5),
                    ),
                    itemCount: 3,
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                sharedOptionFlatButton(
                  context: context,
                  action: () => context.navigator.pop(),
                  secondText: "Cancel",
                  firstText: "",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
