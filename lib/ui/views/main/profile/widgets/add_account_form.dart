import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/accounts_cards/accounts_cards_cubit.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/add_account_form/add_account_form_cubit.dart';

class AddAccountForm extends StatefulWidget {
  @override
  _AddAccountFormState createState() => _AddAccountFormState();
}

class _AddAccountFormState extends State<AddAccountForm> {
  @override
  void initState() {
    context.bloc<AddAccountFormCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> onPop() async {
      await context.bloc<AddAccountFormCubit>().reset();
      return Future.value(true);
    }

    return WillPopScope(
      onWillPop: () => onPop(),
      child: BlocConsumer<AddAccountFormCubit, AddAccountFormState>(
        listener: (context, state) {
          state.verifyAccountInfoFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) => null,
            ),
          );

          state.addAccountInfoFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) async {
                await context.bloc<AddAccountFormCubit>().reset();
                context.bloc<AccountsCardsCubit>().getBanks();
                context.navigator.pop();
              },
            ),
          );
        },
        builder: (context, state) => state.isSubmitting
            ? sharedLoader()
            : Form(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.yMargin(context, 3),
                    ),
                    Text(
                      "Add Bank Account",
                      style: GoogleFonts.workSans(
                        color: ColorStyles.dark,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textSize(context, 5),
                        height: SizeConfig.textSize(context, 0.5),
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    sharedDropDownFormField<String>(
                      value: state.banks
                          .where((element) => element.id == state.bankName)
                          .first
                          .name,
                      items: state.banks.map((e) => e.name).toList(),
                      context: context,
                      labelText: "Bank name",
                      onChanged: (value) {
                        var index;
                        state.banks.map((e) {
                          if (e.name == value) index = e.id;
                        }).toList();
                        context
                            .bloc<AddAccountFormCubit>()
                            .changeBankName(index);
                      },
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    SharedTextFormField(
                      labelText: "Account number",
                      initialValue: state.accountNumber,
                      onChanged: (value) => context
                          .bloc<AddAccountFormCubit>()
                          .changeAccountNumber(value),
                      validator: (value) {
                        if (state.accountNumber.isEmpty)
                          return "Field Required";
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    state.accountName.isEmpty
                        ? Container()
                        : SharedTextFormField(
                            labelText: "Account name",
                            readOnly: true,
                            initialValue: state.accountName,
                            validator: (value) {
                              if (state.accountName.isEmpty)
                                return "Field Required";
                              return null;
                            },
                          ),
                    SizedBox(height: SizeConfig.yMargin(context, 10)),
                    sharedRaisedButton(
                      context: context,
                      onPressed: () => context
                          .bloc<AddAccountFormCubit>()
                          .verifyAccountNumber(),
                      color: ColorStyles.orange,
                      text: "Verify Account Number",
                      minWidth: SizeConfig.xMargin(context, 90),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    state.accountName.isEmpty
                        ? Container()
                        : sharedRaisedButton(
                            context: context,
                            onPressed: () => context
                                .bloc<AddAccountFormCubit>()
                                .addAccount(),
                            color: ColorStyles.blue,
                            text: "Continue",
                            minWidth: SizeConfig.xMargin(context, 90),
                          ),
                    SizedBox(height: SizeConfig.yMargin(context, 2.5)),
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
    );
  }
}
