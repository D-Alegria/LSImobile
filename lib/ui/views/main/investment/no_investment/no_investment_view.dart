import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/mini_investment_card.dart';

class NoInvestmentView extends StatefulWidget {
  @override
  _NoInvestmentViewState createState() => _NoInvestmentViewState();
}

class _NoInvestmentViewState extends State<NoInvestmentView> {
  @override
  void initState() {
    context.bloc<InvestmentProductCubit>().getInvestmentProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InvestmentWrapper(
      loaded: (loaded) => Scaffold(
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
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.yMargin(context, 5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Investments",
                            style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textSize(context, 6),
                              color: ColorStyles.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "\n${double.parse(loaded.investmentBalance).moneyFormat(2)}",
                                style: GoogleFonts.roboto(
                                  fontSize: SizeConfig.textSize(context, 5.5),
                                  color: ColorStyles.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        sharedIconButton(
                          context: context,
                          onPressed: () {},
                          icon: Icon(
                            Icons.info_outline_rounded,
                            color: ColorStyles.light,
                            size: SizeConfig.textSize(context, 9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 2)),
                  Text(
                    "You currently have no investment, chose an investment plan below to get started",
                    style: GoogleFonts.workSans(
                      height: SizeConfig.textSize(context, 0.3),
                      color: ColorStyles.light,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textSize(context, 4.3),
                    ),
                  ),
                  SizedBox(height: SizeConfig.yMargin(context, 5)),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        var investment = e.investmentProducts[index];

                        void navigateToCreateInvestment() {
                          context.bloc<NewInvestmentCubit>().init(investment);
                          context.navigator.pushNewInvestmentView();
                        }

                        if (index % 3 == 0) {
                          return MiniInvestmentCard(
                            investment: investment,
                            color: ColorStyles.red,
                            function: navigateToCreateInvestment,
                          );
                        } else if (index % 3 == 1) {
                          return MiniInvestmentCard(
                            investment: investment,
                            color: ColorStyles.primary,
                            function: navigateToCreateInvestment,
                          );
                        } else {
                          return MiniInvestmentCard(
                            investment: investment,
                            color: ColorStyles.blue2,
                            function: navigateToCreateInvestment,
                          );
                        }
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: SizeConfig.yMargin(context, 2)),
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
      ),
    );
  }
}
