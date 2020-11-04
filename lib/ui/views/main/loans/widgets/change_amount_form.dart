import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/view_model/provide_bvn/provide_bvn_bloc.dart';


class ChangeAmountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProvideBvnBloc(),
      child: BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
        listener: (context, state) {
          state.verifyBVNFailureOrSuccess.fold(
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
          height: SizeConfig.yMargin(context, 45),
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
                    text: "Enter new amount",
                    style: TextStyle(
                      color: ColorStyles.dark,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 5),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text: "\nNew amount cannot be less that XXX",
                        style: TextStyle(
                          fontSize: SizeConfig.textSize(context, 4),
                          fontWeight: FontWeight.w500,
                          color: ColorStyles.dark.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SharedTextFormField(
                  labelText: "Enter amount",
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
      ),
    );
  }
}
