import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/accounts_cards/accounts_cards_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/add_card_form/add_card_form_cubit.dart';

class AddCardForm extends StatefulWidget {
  final CardTransaction transaction;
  final String amount;

  const AddCardForm(
      {Key key, @required this.transaction, @required this.amount})
      : super(key: key);

  @override
  _AddCardFormState createState() => _AddCardFormState();
}

class _AddCardFormState extends State<AddCardForm> {
  @override
  void initState() {
    context.bloc<AddCardFormCubit>().initCardTransaction(widget.amount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> onPop() async {
      await context.bloc<AddCardFormCubit>().reset();
      return Future.value(true);
    }

    return WillPopScope(
      onWillPop: () => onPop(),
      child: BlocConsumer<AddCardFormCubit, AddCardFormState>(
        listener: (context, state) {
          state.submitFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) async {
                await context.bloc<AddCardFormCubit>().reset();
                await context
                    .bloc<AccountsCardsBloc>()
                    .add(GetUserBankDetails());
                await context.navigator.popUntilPath(Routes.accountsCardsView);
              },
            ),
          );

          if (state.checkOutUrl.isNotEmpty) {
            context.navigator.pushCardPaymentWebView(
              url: state.checkOutUrl,
              transaction: widget.transaction,
            );
          }
        },
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
          child: state.isSubmitting
              ? sharedLoader()
              : Form(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(""),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
