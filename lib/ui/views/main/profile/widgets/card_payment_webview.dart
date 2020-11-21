import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/enums/card_transaction.dart';
import 'package:lsi_mobile/core/utils/config_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/make_payment/view_model/make_payment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/add_card_form/add_card_form_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardPaymentWebView extends StatelessWidget {
  final String url;
  final CardTransaction transaction;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  CardPaymentWebView({Key key, this.url, this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> _pop() {
      context.bloc<AddCardFormCubit>().reset();
      return Future.value(true);
    }

    return WillPopScope(
      onWillPop: () => _pop(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorStyles.white,
          brightness: Brightness.light,
          centerTitle: false,
          iconTheme: IconThemeData(color: ColorStyles.black),
        ),
        body: SafeArea(
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) => _controller.complete(controller),
            onPageStarted: (url) async {
              if (url
                  .contains(ConfigReader.getAppConfig().paystackConfirmUrl)) {
                switch (transaction) {
                  case CardTransaction.AddNewCard:
                    await context.navigator.pop();
                    context.bloc<AddCardFormCubit>().addCard();
                    break;
                  case CardTransaction.LoanPayment:
                    String referenceId = await context
                        .bloc<AddCardFormCubit>()
                        .state
                        .referenceId;
                    context
                        .bloc<MakePaymentCubit>()
                        .referenceChanged(referenceId);
                    await context.navigator
                        .popUntilPath(Routes.makePaymentView);
                    context.bloc<MakePaymentCubit>().makePayment();
                    break;
                  case CardTransaction.InvestmentPayment:
                    String referenceId = await context
                        .bloc<AddCardFormCubit>()
                        .state
                        .referenceId;
                    context
                        .bloc<NewInvestmentCubit>()
                        .referenceChanged(referenceId);
                    await context.navigator
                        .popUntilPath(Routes.fundInvestmentView);
                    context.bloc<NewInvestmentCubit>().completeInvestment();
                    break;
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
