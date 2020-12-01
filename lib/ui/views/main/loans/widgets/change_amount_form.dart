import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/make_payment/view_model/make_payment_cubit.dart';

class ChangeAmountForm extends StatelessWidget {
  final String amount;

  const ChangeAmountForm({Key key, @required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> _checkValue(String value) {
      if (double.parse(value) < double.parse(amount))
        return Future.value(false);
      return Future.value(true);
    }

    return BlocBuilder<MakePaymentCubit, MakePaymentState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () => _checkValue(state.amount),
        child: Container(
          decoration: BoxDecoration(
            color: ColorStyles.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: SizeConfig.yMargin(context, 45),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.xMargin(context, 5),
          ),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Enter new amount",
                    style: GoogleFonts.workSans(
                      color: ColorStyles.dark,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 5),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text:
                            "\nNew amount cannot be less that ${double.parse(amount).moneyFormat(2)}",
                        style: GoogleFonts.roboto(
                          fontSize: SizeConfig.textSize(context, 4),
                          fontWeight: FontWeight.w500,
                          color: ColorStyles.dark.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SharedTextFormField(
                  labelText: "Enter amount",
                  initialValue: double.parse(state.amount).toStringAsFixed(2),
                  onChanged: (value) =>
                      context.bloc<MakePaymentCubit>().amountChanged(value),
                  validator: (value) {
                    if (double.parse(value) < double.parse(amount))
                      return 'Amount cannot be less than ${double.parse(amount).moneyFormat(2)}';
                    return null;
                  },
                  keyboardType: TextInputType.number,
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
      ),
    );
  }
}
