import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product/loan_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

import '../widgets/loan_product_box.dart';

class LoanProductView extends StatefulWidget {
  @override
  _LoanProductViewState createState() => _LoanProductViewState();
}

class _LoanProductViewState extends State<LoanProductView> {
  UserDetailsData _userDetailsData;

  @override
  void initState() {
    context.bloc<LoanProductCubit>().getLoanProducts();
    _userDetailsData = context.bloc<UserProfileCubit>().state.userData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: ColorStyles.dark),
        elevation: 0,
        centerTitle: false,
        backgroundColor: ColorStyles.white,
        title: Text(
          "Loan Products",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 16.tx),
            color: ColorStyles.dark.withOpacity(0.8),
          ),
        ),
      ),
      body: BlocConsumer<LoanProductCubit, LoanProductState>(
        builder: (context, state) => state.map(
          initial: (e) => Container(),
          loading: (e) => sharedLoader(),
          loaded: (e) => Container(
            padding: EdgeInsets.only(
              left: SizeConfig.xMargin(context, 25.w),
              right: SizeConfig.xMargin(context, 58.h),
              top: SizeConfig.yMargin(context, 25.w),
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: SizeConfig.yMargin(context, 3),
              ),
              itemBuilder: (context, index) {
                var loan = e.loanProducts[index];

                if (index % 3 == 0) {
                  return LoanProductBox(
                    loanProduct: loan,
                    durationColor: ColorStyles.yellow,
                    gradient: ColorStyles.greenGradient,
                    borderBoxColor: ColorStyles.green3,
                    action: () => context
                        .bloc<LoanProductCubit>()
                        .navigateToForm(context, _userDetailsData, index),
                  );
                } else if (index % 3 == 1) {
                  return LoanProductBox(
                    loanProduct: loan,
                    durationColor: ColorStyles.yellow,
                    gradient: ColorStyles.primaryGradient,
                    borderBoxColor: ColorStyles.blue3,
                    action: () => context
                        .bloc<LoanProductCubit>()
                        .navigateToForm(context, _userDetailsData, index),
                  );
                } else {
                  return LoanProductBox(
                    loanProduct: loan,
                    durationColor: ColorStyles.white,
                    gradient: ColorStyles.yellowGradient,
                    borderBoxColor: ColorStyles.extraLight,
                    action: () => context
                        .bloc<LoanProductCubit>()
                        .navigateToForm(context, _userDetailsData, index),
                  );
                }
              },
              itemCount: e.loanProducts.length,
            ),
          ),
          error: (e) => sharedErrorWidget(context, e.message),
        ),
        listener: (context, state) => state.map(
          initial: (e) => null,
          loading: (e) => null,
          loaded: (e) {
            switch (e.nextForm) {
              case NextForm.bvn:
                return context.navigator.pushProvideBVNView();
                break;
              case NextForm.personalInfo:
                return context.navigator.pushPersonalInfoFormView();
                break;
              case NextForm.emergencyContact:
                context.navigator.pushEmergencyContactFormView();
                break;
              case NextForm.eduAndEmploy:
                context.navigator.pushEduAndEmployFormView();
                break;
              case NextForm.residence:
                context.navigator.pushResidenceFormView();
                break;
              case NextForm.loanDetails:
                context.navigator.pushLoanDetailsView();
                break;
            }
            return null;
          },
          error: (e) => null,
        ),
      ),
    );
  }
}
