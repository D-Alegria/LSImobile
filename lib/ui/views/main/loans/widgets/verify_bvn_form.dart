import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/widgets/change_bvn_form.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/personal_info_form/personal_info_form_cubit.dart';

class VerifyBVNForm extends StatelessWidget {
  const VerifyBVNForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserDetailsWrapper(
      loaded: (user) => BlocConsumer<ProvideBvnBloc, ProvideBvnState>(
        listener: (context, state) {
          state.submitFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (l) => showErrorSnackBar(context, l.message),
              (r) {
                context.bloc<PersonalInfoFormCubit>().init(user.userData.data);
                return context.navigator.pushPersonalInfoFormView();
              },
            ),
          );
        },
        builder: (context, state) => Container(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                            style: GoogleFonts.workSans(
                              color: ColorStyles.dark,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textSize(context, 20.tx),
                              height: SizeConfig.textSize(context, 0.4),
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "\nEnter OTP sent to the number registered to your BVN",
                                style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.textSize(context, 14.tx),
                                  color: ColorStyles.dark.withOpacity(0.44),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 39.h)),
                      SharedTextFormField(
                        labelText: "OTP",
                        initialValue: state.otp,
                        onChanged: (value) => context
                            .bloc<ProvideBvnBloc>()
                            .add(OtpChanged(value)),
                        validator: (value) {
                          if (context.bloc<ProvideBvnBloc>().state.otp.isEmpty)
                            return "Field name is required";
                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: FlatButton(
                          onPressed: () => context.bloc<ProvideBvnBloc>().add(
                              ResendOtp(user.userData.data.profile.legalName)),
                          child: Text(
                            "Resend OTP",
                            style: GoogleFonts.poppins(
                              fontSize: SizeConfig.textSize(context, 14.tx),
                              fontWeight: FontWeight.w400,
                              color: ColorStyles.light,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 49.h)),
                      sharedRaisedButton(
                        context: context,
                        onPressed: () =>
                            context.bloc<ProvideBvnBloc>().add(VerifyBVN()),
                        color: ColorStyles.blue,
                        text: "Submit",
                        minWidth: SizeConfig.xMargin(context, 90),
                      ),
                      SizedBox(height: SizeConfig.yMargin(context, 20.h)),
                      sharedOptionFlatButton(
                        context: context,
                        firstText: "Not your BVN?",
                        secondText: "Change BVN number",
                        action: () {
                          context.navigator.pop();
                          sharedBottomSheet(
                            context: context,
                            form: ChangeBvnForm(
                              fullName: user.userData.data.profile.legalName,
                            ),
                            height: 42,
                          );
                        },
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
