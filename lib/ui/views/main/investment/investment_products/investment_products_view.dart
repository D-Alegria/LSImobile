import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
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
        iconTheme: IconThemeData(color: ColorStyles.dark),
        title: Text(
          "Investment Products",
          style: GoogleFonts.workSans(
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
        margin: EdgeInsets.only(top: SizeConfig.yMargin(context, 6)),
        child: BlocBuilder<InvestmentProductCubit, InvestmentProductState>(
          builder: (context, state) => state.map(
            initial: (e) => Container(),
            loading: (e) => sharedLoader(),
            loaded: (e) => ListView.separated(
              itemBuilder: (context, index) {
                var investment = e.investmentProducts[index];
                void navigateToCreateInvestment() {
                  context.bloc<NewInvestmentCubit>().init(investment);
                  context.navigator.pushNewInvestmentView();
                }

                if (index % 3 == 0) {
                  return ExpandedInvestmentCard(
                    angle: 0,
                    investment: investment,
                    color: ColorStyles.red,
                    onTap: navigateToCreateInvestment,
                  );
                } else if (index % 3 == 1) {
                  return ExpandedInvestmentCard(
                    angle: 51,
                    investment: investment,
                    color: ColorStyles.primary,
                    onTap: navigateToCreateInvestment,
                  );
                } else {
                  return ExpandedInvestmentCard(
                    angle: -16,
                    investment: investment,
                    color: ColorStyles.blue2,
                    onTap: navigateToCreateInvestment,
                  );
                }
              },
              separatorBuilder: (context, index) =>
                  SizedBox(height: SizeConfig.yMargin(context, 3)),
              itemCount: e.investmentProducts.length,
            ),
            error: (e) => sharedErrorWidget(context, e.message),
          ),
        ),
      ),
    );
  }
}
