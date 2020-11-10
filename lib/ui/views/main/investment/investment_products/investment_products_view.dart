import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/expanded_investment_card.dart';

class InvestmentProductsView extends StatefulWidget {
  @override
  _InvestmentProductsViewState createState() => _InvestmentProductsViewState();
}

class _InvestmentProductsViewState extends State<InvestmentProductsView> {
  @override
  void initState() {
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
        brightness: Brightness.light,
        title: Text(
          "Investment Products",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: BlocBuilder<InvestmentProductCubit, InvestmentProductState>(
          builder: (context, state) => state.map(
            initial: (e) => Container(),
            loading: (e) => sharedLoader(),
            loaded: (e) => ListView.separated(
              itemBuilder: (context, index) {
                var investment = e.investmentProducts[index];

                if (index % 3 == 0) {
                  return ExpandedInvestmentCard(
                    angle: 0,
                    title: investment.investmentTitle,
                    value:
                        "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                    details: investment.investmentDescription,
                    borderColor: ColorStyles.red.withOpacity(0.6),
                    color: ColorStyles.red.withOpacity(0.1),
                    textColor: ColorStyles.red,
                    onTap: () => context.navigator
                        .pushNewInvestmentView(investmentProduct: investment),
                  );
                } else if (index % 3 == 1) {
                  return ExpandedInvestmentCard(
                    angle: 51,
                    title: investment.investmentTitle,
                    value:
                        "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                    details: investment.investmentDescription,
                    borderColor: ColorStyles.primary.withOpacity(0.6),
                    color: ColorStyles.primary.withOpacity(0.1),
                    textColor: ColorStyles.primary,
                    onTap: () => context.navigator
                        .pushNewInvestmentView(investmentProduct: investment),
                  );
                } else {
                  return ExpandedInvestmentCard(
                    angle: -16,
                    title: investment.investmentTitle,
                    value:
                        "N${investment.investmentAmount} - N${investment.investmentMaxAmount}",
                    details: investment.investmentDescription,
                    borderColor: ColorStyles.blue2.withOpacity(0.6),
                    color: ColorStyles.blue2.withOpacity(0.1),
                    textColor: ColorStyles.blue2,
                    onTap: () => context.navigator
                        .pushNewInvestmentView(investmentProduct: investment),
                  );
                }
              },
              separatorBuilder: (context, index) =>
                  SizedBox(height: SizeConfig.yMargin(context, 4)),
              itemCount: e.investmentProducts.length,
            ),
            error: (e) => sharedErrorWidget(context, e.message),
          ),
        ),
      ),
    );
  }
}
