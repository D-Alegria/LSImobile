import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/account_info/view_model/account_info_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product/loan_product_cubit.dart';

import '../widgets/loan_form.dart';

class AccountInfoView extends StatefulWidget {
  @override
  _AccountInfoViewState createState() => _AccountInfoViewState();
}

class _AccountInfoViewState extends State<AccountInfoView> {
  LoanRequest _loanRequest;
  LoanProduct _loanProduct;

  @override
  void initState() {
    _loanRequest = context.bloc<LoanDetailsBloc>().state.loanRequest;
    context.bloc<LoanProductCubit>().state.maybeMap(
        orElse: () => null,
        loaded: (e) => _loanProduct = e.loanProducts[e.selected]);
    context.bloc<AccountInfoBloc>().add(AccountInfoEvent.init(
          request: _loanRequest,
          loanProduct: _loanProduct,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return UserDetailsWrapper(
      loaded: (userData) => BlocConsumer<AccountInfoBloc, AccountInfoState>(
        builder: (context, state) => LoanForm(
          title: "Account Information",
          form: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: state.isSubmitting
                ? sharedLoader()
                : Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.xMargin(context, 5),
                    ),
                    child: ListView(
                      children: [
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
                                .bloc<AccountInfoBloc>()
                                .add(BankNameChanged(index));
                          },
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 3)),
                        SharedTextFormField(
                          labelText: "Account number",
                          initialValue: state.accountNumber,
                          onChanged: (value) => context
                              .bloc<AccountInfoBloc>()
                              .add(AccountNumberChanged(value)),
                          validator: (value) {
                            if (context
                                .bloc<AccountInfoBloc>()
                                .state
                                .accountNumber
                                .isEmpty) return "Field Required";
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
                        SizedBox(height: SizeConfig.yMargin(context, 20)),
                        sharedRaisedButton(
                          context: context,
                          onPressed: () => context
                              .bloc<AccountInfoBloc>()
                              .add(SubmitAccountInfoForm()),
                          color: ColorStyles.orange,
                          text: "Submit",
                          minWidth: SizeConfig.xMargin(context, 90),
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 3)),
                        state.accountName.isEmpty
                            ? Container()
                            : sharedRaisedButton(
                                context: context,
                                onPressed: () => context
                                    .bloc<AccountInfoBloc>()
                                    .add(ApplyForLoan(
                                        userData.userData.data.bvn.bvn)),
                                color: ColorStyles.blue,
                                text: "Continue",
                                minWidth: SizeConfig.xMargin(context, 90),
                              ),
                        SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                      ],
                    ),
                  ),
          ),
        ),
        listener: (context, state) {
          state.submitAccountInfoFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => FlushbarHelper.createError(
                      message: l.message, duration: new Duration(seconds: 3))
                  .show(context),
              (r) => null,
            ),
          );
          state.applyForLoanFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) {
                return context.navigator.pushAndRemoveUntil(
                  Routes.successView,
                  (routes) => false,
                  arguments: SuccessViewArguments(
                    message: "Your loan request has been sent successfully",
                    buttonText: "Back to loans",
                    onTap: () {
                      return ExtendedNavigator.root.pushAndRemoveUntil(
                        Routes.mainView,
                        (route) => false,
                        arguments: MainViewArguments(pageNumber: 1),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
