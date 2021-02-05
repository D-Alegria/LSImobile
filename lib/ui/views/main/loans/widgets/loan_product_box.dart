import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/double_extension.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class LoanProductBox extends StatelessWidget {
  final String borderBox = "assets/svgs/border_box.svg";
  final Gradient gradient;
  final LoanProduct loanProduct;
  final Color durationColor;
  final Color borderBoxColor;
  final Function action;

  const LoanProductBox({
    Key key,
    @required this.gradient,
    @required this.loanProduct,
    @required this.durationColor,
    @required this.borderBoxColor,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: action,
        child: sharedRaisedContainer(
          height: SizeConfig.yMargin(context, 144.h),
          gradient: gradient,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: loanProduct.loanTitle,
                      style: GoogleFonts.workSans(
                        height: 1.5,
                        color: ColorStyles.white,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.textSize(context, 15.tx),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "\n${double.parse(loanProduct.minimumAmount).moneyFormat(0)} - ${double.parse(loanProduct.maximumAmount).moneyFormat(0)}",
                          style: GoogleFonts.roboto(
                            fontSize: SizeConfig.textSize(context, 20.tx),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Max duration: ${loanProduct.maxLoanDuration} months",
                    style: GoogleFonts.workSans(
                      color: durationColor,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textSize(context, 14.tx),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                borderBox,
                semanticsLabel: "Outline box",
                width: SizeConfig.xMargin(context, 13),
                fit: BoxFit.fitWidth,
                color: borderBoxColor,
              ),
            ],
          ),
        ));
  }
}
