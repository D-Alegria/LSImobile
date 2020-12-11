import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_plan/view_model/withdraw_investment/withdraw_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/bank_account_card.dart';

class WithdrawForm extends StatelessWidget {
  final Investment investment;

  const WithdrawForm({Key key, @required this.investment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WithdrawFormCubit>(),
      child: BlocConsumer<WithdrawFormCubit, WithdrawFormState>(
        listener: (context, state) {
          state.submitFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) => context.navigator.pop(),
            ),
          );
        },
        builder: (context, state) => state.isSubmitting
            ? sharedLoader()
            : Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    RichText(
                      text: TextSpan(
                        text: "Withdraw",
                        style: GoogleFonts.workSans(
                          color: ColorStyles.dark,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.textSize(context, 20.tx),
                          height: SizeConfig.textSize(context, 0.5),
                        ),
                        children: [
                          TextSpan(
                            text:
                                "\nSelect account to withdraw specified amount to",
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w500,
                              color: ColorStyles.dark.withOpacity(0.5),
                              fontSize: SizeConfig.textSize(context, 14.tx),
                              height: SizeConfig.textSize(context, 0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 28.h)),
                    SharedTextFormField(
                      labelText: "Enter amount",
                      initialValue: state.amount,
                      onChanged: (value) => context
                          .bloc<WithdrawFormCubit>()
                          .amountChanged(value),
                      validator: (value) {
                        double minAmount = 0;
                        double maxAmount =
                            double.parse(investment.requestPrincipal);
                        if (double.parse(context
                                    .bloc<WithdrawFormCubit>()
                                    .state
                                    .amount) <
                                minAmount ||
                            double.parse(context
                                    .bloc<WithdrawFormCubit>()
                                    .state
                                    .amount) >
                                maxAmount)
                          return "Amount has to be between \n${minAmount.moneyFormat(2)} - ${maxAmount.moneyFormat(2)}";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 28.h)),
                    Container(
                      height: SizeConfig.yMargin(context, 144.h),
                      child: AccountsCardsWrapper(
                        loaded: ({accounts, cards}) => ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var account = accounts[index];
                            return Container(
                              width: SizeConfig.xMargin(context, 274.w),
                              child: BankAccountCard(
                                accountName: account.accountName,
                                accountNumber: account.accountNumber,
                                bankName: account.bankName,
                                onTap: () => context
                                    .bloc<WithdrawFormCubit>()
                                    .withDraw(
                                      planId: investment.investmentProductId,
                                      bankId: account.bankId,
                                    ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            width: SizeConfig.xMargin(context, 5),
                          ),
                          itemCount: accounts.length,
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 42.h)),
                    sharedOptionFlatButton(
                      context: context,
                      action: () => context.navigator.pop(),
                      secondText: "Cancel",
                      firstText: "",
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 20.h)),
                  ],
                ),
              ),
      ),
    );
  }
}
