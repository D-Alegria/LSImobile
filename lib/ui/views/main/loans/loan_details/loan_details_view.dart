import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product/loan_product_cubit.dart';

import '../widgets/loan_form.dart';

class LoanDetailsView extends StatefulWidget {
  @override
  _LoanDetailsViewState createState() => _LoanDetailsViewState();
}

class _LoanDetailsViewState extends State<LoanDetailsView> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoanProduct _loanProduct;

  @override
  void initState() {
    context.bloc<LoanProductCubit>().state.maybeMap(
        orElse: () => null,
        loaded: (e) => _loanProduct = e.loanProducts[e.selected]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoanDetailsBloc, LoanDetailsState>(
      builder: (context, state) => LoanForm(
        title: "Loan Details",
        form: state.isSubmitting
            ? sharedLoader()
            : Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.xMargin(context, 5),
                  ),
                  child: ListView(
                    children: [
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      SharedTextFormField(
                        labelText: "How much do you want",
                        initialValue:
                            state.amount == 0 ? "" : state.amount.toString(),
                        onChanged: (value) => context
                            .bloc<LoanDetailsBloc>()
                            .add(AmountChanged(double.parse(value))),
                        validator: (value) {
                          double minAmount =
                              double.parse(_loanProduct.minimumAmount);
                          double maxAmount =
                              double.parse(_loanProduct.maximumAmount);
                          if (context.bloc<LoanDetailsBloc>().state.amount <
                                  minAmount ||
                              context.bloc<LoanDetailsBloc>().state.amount >
                                  maxAmount)
                            return "Amount has to be between \n${minAmount.moneyFormat(2)} - ${maxAmount.moneyFormat(2)}";
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      SharedTextFormField(
                        labelText: "For how long?",
                        initialValue: state.time,
                        onChanged: (value) => context
                            .bloc<LoanDetailsBloc>()
                            .add(TimeChanged(value)),
                        validator: (value) {
                          if (context
                              .bloc<LoanDetailsBloc>()
                              .state
                              .time
                              .isEmpty) return "Field name is required";
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 3)),
                      sharedDropDownFormField<String>(
                        value: state.reasons
                            .where((element) => element.id == state.reason)
                            .first
                            .name,
                        items: state.reasons.map((e) => e.name).toList(),
                        context: context,
                        labelText: "Reason for this loan",
                        onChanged: (String value) {
                          var index;
                          state.reasons.map((e) {
                            if (e.name == value) index = e.id;
                          }).toList();
                          context
                              .bloc<LoanDetailsBloc>()
                              .add(ReasonChanged(index));
                        },
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 28)),
                      sharedRaisedButton(
                        context: context,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            context
                                .bloc<LoanDetailsBloc>()
                                .add(SubmitLoanDetailsForm());
                          }
                        },
                        color: ColorStyles.blue,
                        text: "Submit",
                        minWidth: SizeConfig.xMargin(context, 90),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 2.5)),
                    ],
                  ),
                ),
              ),
      ),
      listener: (context, state) =>
          state.submitLoanDetailsFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (l) => showErrorSnackBar(context, l.message),
          (r) => context.navigator.pushAccountInfoView(),
        ),
      ),
    );
  }
}
