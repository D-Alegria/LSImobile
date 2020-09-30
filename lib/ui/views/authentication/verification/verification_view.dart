import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/configs/route/route.gr.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/register/register_bloc.dart';
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

    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        body: BlocConsumer<RegisterBloc, RegisterState>(
          builder: (context, state) => AuthForm(
            title: "Verify phone",
            subTitle: "Phone number verifcation required",
            height: 50,
            form: Form(
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
                              text: " 08028323223",
                              style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                            text:
                                ", enter the code below to verify your phone number",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.yMargin(context, 3),
                  ),
                  SharedTextFormField(
                    labelText: "Verification Code",
                  ),
                  SizedBox(
                    height: SizeConfig.yMargin(context, 4),
                  ),
                  sharedRaisedButton(
                    context: context,
                    onPressed: () =>
                        context.bloc<RegisterBloc>()..add(VerifyUser()),
                    color: ColorStyles.blue,
                    text: "Verfiy",
                  ),
                  SizedBox(
                    height: SizeConfig.yMargin(context, 1),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(
                      onPressed: () {},
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
                  sharedOptionFlatButton(
                    context: context,
                    firstText: "Not your phone?",
                    secondText: "Change phone number",
                    action: () => _showChangePhoneForm(),
                  ),
                ],
              ),
            ),
          ),
          listener: (context, state) => state.verifyFailureOrSuccess.fold(
            () => null,
            (either) => either.fold(
              (failure) => null,
              (success) => context.navigator.pushAndRemoveUntil(
                Routes.mainView,
                (route) => false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
