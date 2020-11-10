import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/auth_form.dart';
import 'package:lsi_mobile/ui/views/authentication/widgets/change_phone_form.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showChangePhoneForm() {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: ColorStyles.black.withOpacity(0.2),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ChangePhoneForm(),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: BlocConsumer<AuthFormBloc, AuthFormState>(
        builder: (context, state) {
          return AuthForm(
            title: "Verify phone",
            subTitle: "Phone number verification required",
            height: 50,
            form: state.isSubmitting
                ? sharedLoader()
                : Form(
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
                              .bloc<AuthFormBloc>()
                              .add(VerificationCodeChanged(value)),
                          validator: (value) {
                            if (state.verificationCode.isEmpty)
                              return "Field is required";
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: FlatButton(
                            onPressed: () =>
                                context.bloc<AuthFormBloc>().add(ResendOTP()),
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
                              context.bloc<AuthFormBloc>().add(VerifyUser()),
                          color: ColorStyles.blue,
                          text: "Verify",
                        ),
                        sharedOptionFlatButton(
                          context: context,
                          firstText: "Not your phone?",
                          secondText: "Change phone number",
                          action: () => _showChangePhoneForm(),
                        ),
                      ],
                    ),
                  ),
          );
        },
        listener: (context, state) => state.authFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (failure) => failure.maybeMap(
              orElse: () => FlushbarHelper.createError(
                message: failure.message,
                duration: new Duration(seconds: 3),
              ).show(context),
              unAuthenticatedGlitch: (e) async {
                FlushbarHelper.createError(
                  message: failure.message,
                  duration: Duration(seconds: 3),
                ).show(context);
                await Future.delayed(Duration(seconds: 3));
                return context.navigator.pushAndRemoveUntil(
                  Routes.authWrapper,
                  (route) => false,
                );
              },
            ),
            (success) => context.navigator.pushAndRemoveUntil(
              Routes.mainView,
              (route) => false,
              arguments: MainViewArguments(pageNumber: 0),
            ),
          ),
        ),
      ),
    );
  }
}
