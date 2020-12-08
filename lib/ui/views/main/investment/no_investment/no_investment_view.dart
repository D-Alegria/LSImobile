import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/widgets/mini_investment_card.dart';
import 'package:lsi_mobile/ui/views/main/view_model/main_view/main_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_cubit.dart';

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
    return UserDetailsWrapper(
      loaded: (userData) => InvestmentWrapper(
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
                                fontSize: SizeConfig.textSize(context, 22.tx),
                                color: ColorStyles.black,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      "\n${double.parse(loaded.investmentBalance).moneyFormat(2)}",
                                  style: GoogleFonts.roboto(
                                    fontSize:
                                        SizeConfig.textSize(context, 20.tx),
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
                    SizedBox(height: SizeConfig.yMargin(context, 48.h)),
                    Text(
                      "You currently have no investment, chose an investment plan below to get started",
                      style: GoogleFonts.workSans(
                        height: SizeConfig.textSize(context, 0.3),
                        color: ColorStyles.light,
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textSize(context, 16.tx),
                      ),
                    ),
                    SizedBox(height: SizeConfig.yMargin(context, 49.h)),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          var investment = e.investmentProducts[index];
                          var mainView =
                              BlocProvider.of<MainViewCubit>(context);
                          void navigateToCreateInvestment() {
                            String defaultImage =
                                "https://res.cloudinary.com/africacodes-concepts-limited/image/upload/v1507561173/avatar-mini.jpg?q=auto";
                            if (userData.userData.data.profile.fileName ==
                                defaultImage) {
                              showActionSnackBar(
                                context: context,
                                message:
                                    "Please you need to update your profile picture to apply for loans",
                                onTap: () {
                                  mainView.changePage(4);
                                  return context
                                      .bloc<UserProfileCubit>()
                                      .updateProfilePictureImage(context);
                                },
                                buttonText: "Click here to update",
                              );
                            } else {
                              context
                                  .bloc<NewInvestmentCubit>()
                                  .init(investment);
                              context.navigator.pushNewInvestmentView();
                            }
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
      ),
    );
  }
}
