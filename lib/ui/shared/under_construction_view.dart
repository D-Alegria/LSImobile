import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class UnderConstructionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.xMargin(context, 5),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: SizeConfig.yMargin(context, 70),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/under_construction.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.yMargin(context, 4),
            ),
            Text(
              'Under Construction',
              style: TextStyle(
                fontSize: SizeConfig.textSize(context, 7),
                fontWeight: FontWeight.w600,
                color: ColorStyles.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
