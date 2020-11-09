import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/mini_investment_card.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

class NoInvestmentView extends StatefulWidget {
  @override
  _NoInvestmentViewState createState() => _NoInvestmentViewState();
}

class _NoInvestmentViewState extends State<NoInvestmentView> {
  String investment;

  @override
  void initState() {
    context.bloc<UserProfileBloc>().state.maybeMap(
          orElse: () => null,
          loaded: (value) => investment = value.investmentBalance,
        );
    context.bloc<InvestmentProductCubit>().getInvestmentProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        actions: [
          sharedIconButton(
            context: context,
            onPressed: () {},
            icon: Icon(
              Icons.info_outline_rounded,
              color: ColorStyles.light,
              size: SizeConfig.textSize(context, 7.5),
            ),
          ),
        ],
        title: RichText(
          text: TextSpan(
            text: "Investments",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.textSize(context, 5),
              color: ColorStyles.black,
            ),
            children: [
              TextSpan(
                text: "\nN$investment",
                style: TextStyle(
                  fontSize: SizeConfig.textSize(context, 4.6),
                  color: ColorStyles.orange,
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<InvestmentProductCubit, InvestmentProductState>(
        builder: (context, state) => state.map(
          initial: (e) => Container(),
          loading: (e) => sharedLoader(),
          loaded: (e) => Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.xMargin(context, 5),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                Text(
                  "You currently have no investment, chose an investment plan below to get started",
                  style: GoogleFonts.workSans(
                    height: SizeConfig.textSize(context, 0.4),
                    color: ColorStyles.light,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textSize(context, 5),
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 4)),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      var investment = e.investmentProducts[index];

                      if (index % 3 == 0) {
                        return MiniInvestmentCard(
                          title: investment.investmentTitle,
                          value:
                              "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                          borderColor: ColorStyles.red.withOpacity(0.6),
                          color: ColorStyles.red.withOpacity(0.1),
                          textColor: ColorStyles.red,
                          function: () => context.navigator
                              .pushNewInvestmentView(
                                  investmentProduct: investment),
                        );
                      } else if (index % 3 == 1) {
                        return MiniInvestmentCard(
                          title: "${investment.investmentTitle}",
                          value:
                              "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                          borderColor: ColorStyles.primary.withOpacity(0.6),
                          color: ColorStyles.primary.withOpacity(0.1),
                          textColor: ColorStyles.primary,
                          function: () => context.navigator
                              .pushNewInvestmentView(
                                  investmentProduct: investment),
                        );
                      } else {
                        return MiniInvestmentCard(
                          title: investment.investmentTitle,
                          value:
                              "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                          borderColor: ColorStyles.blue2.withOpacity(0.6),
                          color: ColorStyles.blue2.withOpacity(0.1),
                          textColor: ColorStyles.blue2,
                          function: () => context.navigator
                              .pushNewInvestmentView(
                                  investmentProduct: investment),
                        );
                      }
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: SizeConfig.yMargin(context, 3)),
                    itemCount: e.investmentProducts.length,
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 3)),
              ],
            ),
          ),
          error: (e) => sharedErrorWidget(context, e.message),
        ),
      ),
    );
  }
}
