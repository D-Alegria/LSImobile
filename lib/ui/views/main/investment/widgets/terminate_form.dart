import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_plan/view_model/terminate_investment/terminate_form_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/bank_account_card.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';

class TerminateForm extends StatelessWidget {
  final String planId;
  final String amount;

  const TerminateForm({Key key, @required this.planId, @required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TerminateFormCubit>(),
      child: BlocConsumer<TerminateFormCubit, TerminateFormState>(
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
                    SizedBox(height: SizeConfig.yMargin(context, 4)),
                    RichText(
                      text: TextSpan(
                        text: "Terminate",
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
                              fontSize: SizeConfig.textSize(context, 14.tx),
                              color: ColorStyles.dark.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 32.h)),
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
                                    .bloc<TerminateFormCubit>()
                                    .terminate(
                                      planId: planId,
                                      amount: amount,
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
