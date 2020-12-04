import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/models/dto/investment_duration/investment_duration.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';

class FundLengthOptions extends StatelessWidget {
  final List<InvestmentDuration> durations;
  final int select;

  const FundLengthOptions({
    Key key,
    this.durations,
    this.select,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 80.h),
      child: ListView.separated(
        itemCount: durations.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var duration = durations[index];
          bool selected = index == select;
          return InkWell(
            onTap: () => BlocProvider.of<NewInvestmentCubit>(context)
                .durationChanged(index),
            child: _buildDurationBox(
              context,
              duration.noOfMonth.toString(),
              duration.interestRate.toString(),
              selected,
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: SizeConfig.xMargin(context, 20.w),
        ),
      ),
    );
  }

  Widget _buildDurationBox(
      BuildContext context, String month, String percentage, bool selected) {
    return Container(
      width: SizeConfig.xMargin(context, 107.w),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, 3)),
      child: RichText(
        text: TextSpan(
          text: "$month months",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w500,
            fontSize: SizeConfig.textSize(context, 14.tx),
            color: selected ? ColorStyles.extraLight : ColorStyles.light,
            height: SizeConfig.textSize(context, 0.35),
          ),
          children: [
            TextSpan(
              text: "\n$percentage%",
              style: GoogleFonts.workSans(
                color: selected ? ColorStyles.lightYellow : ColorStyles.orange,
              ),
            ),
            TextSpan(
              text: "\nper annum",
              style: GoogleFonts.workSans(
                fontSize: SizeConfig.textSize(context, 13.tx),
                color: selected ? ColorStyles.grey5 : ColorStyles.grey3,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: selected ? ColorStyles.orange : ColorStyles.grey6,
      ),
    );
  }
}
