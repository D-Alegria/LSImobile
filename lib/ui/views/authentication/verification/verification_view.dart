import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_cubit.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/change_phone_form.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthFormCubit, AuthFormState>(
        builder: (context, state) {
          return AuthForm(
            title: "Verify phone",
            subTitle: "Phone number verification required",
            height: 50,
            form: state.isSubmitting
                ? sharedLoader()
                : Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.xMargin(context, 1),
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "An OTP code has been sent to",
                              style: GoogleFonts.workSans(
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textSize(context, 4),
                                height: SizeConfig.textSize(context, 0.4),
                              ),
                              children: [
                                TextSpan(
                                  text: " ${state.phoneNumber}",
                                  style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ", enter the code below to verify your phone number",
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 3)),
                        SharedTextFormField(
                          initialValue: state.verificationCode,
                          labelText: "Verification Code",
                          onChanged: (value) => context
                              .bloc<AuthFormCubit>()
                              .verificationCodeChanged(value),
                          validator: (value) {
                            if (!context
                                .bloc<AuthFormCubit>()
                                .state
                                .verificationCode
                                .isValidPassword) return "Field is required";
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: FlatButton(
                            onPressed: () =>
                                context.bloc<AuthFormCubit>().resendOTP(),
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
                        SizedBox(height: SizeConfig.yMargin(context, 23.h)),
                        sharedRaisedButton(
                          context: context,
                          onPressed: () =>
                              context.bloc<AuthFormCubit>().verifyUser(),
                          color: ColorStyles.blue,
                          text: "Verify",
                        ),
                        SizedBox(height: SizeConfig.yMargin(context, 22.h)),
                        sharedOptionFlatButton(
                          context: context,
                          firstText: "Not your phone?",
                          secondText: "Change phone number",
                          action: () => sharedBottomSheet(
                            context: context,
                            form: ChangePhoneForm(),
                            height: 42,
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
        listener: (context, state) {
          state.authFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (failure) => showErrorSnackBar(context, failure.message),
              (success) =>
                  showSuccessSnackBar(context, "OTP sent successfully"),
            ),
          );
          state.verifyFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (failure) => showErrorSnackBar(context, failure.message),
              (success) => context.navigator.pushAndRemoveUntil(
                Routes.mainView,
                (route) => false,
                arguments: MainViewArguments(pageNumber: 0),
              ),
            ),
          );
        },
      ),
    );
  }
}
