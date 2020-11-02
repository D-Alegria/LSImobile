import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';

class ChangePhoneForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      builder: (context, state) => Container(
        decoration: BoxDecoration(
          color: ColorStyles.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: SizeConfig.yMargin(context, 42),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: SizeConfig.yMargin(context, 3)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.xMargin(context, 1),
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Change phone number",
                    style: TextStyle(
                      color: ColorStyles.black,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 4),
                      height: SizeConfig.textSize(context, 0.4),
                    ),
                    children: [
                      TextSpan(
                        text: "\nEnter your new phone number below",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorStyles.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.yMargin(context, 3)),
              SharedTextFormField(
                labelText: "Phone number",
                initialValue: state.phoneNumber,
                onChanged: (value) =>
                    context.bloc<AuthFormBloc>().add(PhoneNumberChanged(value)),
                validator: (value) {
                  if (state.phoneNumber.isEmpty) return "Field is required";
                  return null;
                },
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: SizeConfig.yMargin(context, 4)),
              sharedRaisedButton(
                context: context,
                onPressed: () {
                  context.bloc<AuthFormBloc>().add(ResendOTP());
                  return context.navigator.pop();
                },
                color: ColorStyles.blue,
                text: "Change",
              ),
              SizedBox(
                height: SizeConfig.yMargin(context, 1),
              ),
              sharedOptionFlatButton(
                context: context,
                firstText: "",
                secondText: "Cancel",
                action: () => context.navigator.pop(),
              ),
            ],
          ),
        ),
      ),
      listener: (context, state) => null,
    );
  }
}
