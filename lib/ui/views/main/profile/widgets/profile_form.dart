import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';

class ProfileForm extends StatelessWidget {
  final String title;
  final Widget form;
  final TabController tabController;
  final List<String> tabs;

  const ProfileForm({
    Key key,
    @required this.title,
    @required this.form,
    @required this.tabController,
    @required this.tabs,
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
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, 5)),
      child: form,
    );
  }

  Widget header(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: SizeConfig.yMargin(context, 5),
        left: SizeConfig.xMargin(context, 5),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textSize(context, 8),
          color: ColorStyles.white,
        ),
      ),
    );
  }
}
