import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/atm_card.dart';

class PayWithExistingCardForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
      listener: (context, state) {
        state.submitFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => context.navigator.pushPersonalInfoFormView(),
          ),
        );
      },
      builder: (context, state) => Container(
        decoration: BoxDecoration(
          color: ColorStyles.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: SizeConfig.yMargin(context, 50),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: "Pay with existing card",
                  style: TextStyle(
                    color: ColorStyles.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(context, 5),
                    height: SizeConfig.textSize(context, 0.4),
                  ),
                  children: [
                    TextSpan(
                      text: "\nSelect a card below to pay with card",
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(context, 4),
                        fontWeight: FontWeight.w500,
                        color: ColorStyles.dark.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: SizeConfig.yMargin(context, 22),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ATMCard(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: SizeConfig.xMargin(context, 5),
                  ),
                  itemCount: 3,
                ),
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
    );
  }
}
