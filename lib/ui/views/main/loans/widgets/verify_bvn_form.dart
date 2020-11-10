import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';

class VerifyBVNForm extends StatelessWidget {
  final String fullName;

  const VerifyBVNForm({Key key, this.fullName}) : super(key: key);

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
        height: SizeConfig.yMargin(context, 53),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Form(
          child: state.isSubmitting
              ? sharedLoader()
              : Column(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.yMargin(context, 3)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.xMargin(context, 1),
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: "Verify BVN",
                          style: TextStyle(
                            color: ColorStyles.dark,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.textSize(context, 4),
                            height: SizeConfig.textSize(context, 0.4),
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "\nEnter OTP sent to the number registered to your BVN",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: ColorStyles.dark.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.yMargin(context, 3),
                    ),
                    SharedTextFormField(
                      labelText: "OTP",
                      initialValue: state.otp,
                      onChanged: (value) =>
                          context.bloc<ProvideBvnBloc>().add(OtpChanged(value)),
                      validator: (value) {
                        if (state.otp.isEmpty) return "Field name is required";
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FlatButton(
                        onPressed: () => () => context
                            .bloc<ProvideBvnBloc>()
                            .add(CheckBVN(fullName)),
                        child: Text(
                          "Resend OTP",
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.textSize(context, 4.5),
                            fontWeight: FontWeight.w400,
                            color: ColorStyles.light,
                          ),
                        ),
                      ),
                    ),
                    sharedRaisedButton(
                        context: context,
                        onPressed: () =>
                            context.bloc<ProvideBvnBloc>().add(VerifyBVN()),
                        color: ColorStyles.blue,
                        text: "Submit",
                        minWidth: SizeConfig.xMargin(context, 90)),
                    sharedOptionFlatButton(
                      context: context,
                      firstText: "Not your BVN? ",
                      secondText: "Change BVN number",
                      action: () => null,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
