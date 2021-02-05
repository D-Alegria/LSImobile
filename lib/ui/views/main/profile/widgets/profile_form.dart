import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/extensions/num_extension.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ProfileForm extends StatelessWidget {
  final String title;
  final Widget form;
  final TabController tabController;
  final List<String> tabs;
  final bool isScrollable;

  const ProfileForm({
    Key key,
    @required this.title,
    @required this.form,
    @required this.tabController,
    @required this.tabs,
    this.isScrollable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.primaryBlue,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: ColorStyles.primaryBlue,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, title),
            TabBar(
              isScrollable: isScrollable,
              controller: tabController,
              unselectedLabelColor: Colors.white,
              indicatorColor: ColorStyles.white,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              tabs: List.generate(
                tabs.length,
                (index) => new Tab(
                  child: Text(tabs[index]),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 0.5)),
            Expanded(child: formContainer(context, form)),
          ],
        ),
      ),
    );
  }

  Widget formContainer(BuildContext context, Widget form) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: SizeConfig.yMargin(context, -37),
            right: SizeConfig.xMargin(context, 0),
            left: SizeConfig.xMargin(context, -50),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(38, 242, 74, 74),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.yMargin(context, -27),
            right: SizeConfig.xMargin(context, -80),
            left: SizeConfig.xMargin(context, 0),
            child: Container(
              height: SizeConfig.yMargin(context, 40),
              width: SizeConfig.xMargin(context, 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(130, 168, 213, 255),
              ),
            ),
          ),
          form
        ],
      ),
    );
  }

  Widget header(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: SizeConfig.yMargin(context, 41.h),
        top: SizeConfig.yMargin(context, 36.h),
        left: SizeConfig.xMargin(context, 5),
      ),
      child: Text(
        title,
        style: GoogleFonts.workSans(
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textSize(context, 24.tx),
          color: ColorStyles.white,
        ),
      ),
    );
  }
}
