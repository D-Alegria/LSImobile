import 'package:flutter/material.dart';
import 'package:lsi_mobile/core/view_models/home_viewmodel.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:provider/provider.dart';

class ScreenHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color secondTextColor;
  final bool investment;
  final String image;

  ScreenHeader({
    this.firstText,
    this.secondText,
    this.secondTextColor,
    this.investment,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<HomeViewModel>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textSize(context, 6.5),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.yMargin(context, 0.5),
                ),
                Text(
                  secondText,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.textSize(context, 4.5),
                    color: secondTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: SizeConfig.xMargin(context, 2),
          ),
          InkWell(
            onTap: () {
              investment
                  ? print('investment')
                  : model.navigateToProfileView(context);
            },
            child: Container(
              height: SizeConfig.yMargin(context, 7),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle),
              child: investment
                  ? Icon(
                      Icons.error_outline,
                      color: ColorStyles.light,
                      size: SizeConfig.yMargin(context, 7),
                    )
                  : Image.network(
                      image,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: ColorStyles.black,
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
