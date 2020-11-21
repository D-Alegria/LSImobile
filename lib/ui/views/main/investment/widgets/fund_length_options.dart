import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/models/dto/investment_duration/investment_duration.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_cubit.dart';

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
      height: SizeConfig.yMargin(context, 16),
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
          width: SizeConfig.xMargin(context, 7),
        ),
      ),
    );
  }

  Widget _buildDurationBox(
      BuildContext context, String month, String percentage, bool selected) {
    return Container(
      width: SizeConfig.xMargin(context, 33),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, 3)),
      child: RichText(
        text: TextSpan(
          text: "$month months",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: selected ? ColorStyles.extraLight : ColorStyles.light,
            height: SizeConfig.textSize(context, 0.46),
          ),
          children: [
            TextSpan(
              text: "\n$percentage%",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
                color: selected ? ColorStyles.lightYellow : ColorStyles.orange,
              ),
            ),
            TextSpan(
              text: "\nper annum",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.textSize(context, 5),
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
