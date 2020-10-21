import 'package:flutter/material.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:lsi_mobile/ui/views/main/profile/widgets/profile_form.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProfileForm(
      tabController: _tabController,
      title: "Edit Profile",
      tabs: ["Personal Information", "Education and Employment"],
      form: Form(
        child: TabBarView(
          children: [
            ListView(
              children: [
                SizedBox(height: SizeConfig.yMargin(context, 6)),
                SharedTextFormField(labelText: "First name"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Last name"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                sharedDropDownFormField<String>(
                  items: ["Male", "Female", "Other"],
                  context: context,
                  labelText: "Gender",
                  onChanged: (String value) {},
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Email address"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Phone number"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Date of birth"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                Padding(
                  padding: EdgeInsets.only(
                    right: SizeConfig.xMargin(context, 60),
                  ),
                  child: sharedOutlineRaisedButton(
                    context: context,
                    onPressed: () => null,
                    color: ColorStyles.blue,
                    text: "Save",
                    minWidth: SizeConfig.xMargin(context, 30),
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2.5)),
              ],
            ),
            ListView(
              children: [
                SizedBox(height: SizeConfig.yMargin(context, 6)),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Level of education",
                  onChanged: (String value) {},
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                sharedDropDownFormField<String>(
                  items: ["A", "B", "C"],
                  context: context,
                  labelText: "Employment status",
                  onChanged: (String value) {},
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Employer name"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Start date"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                SharedTextFormField(labelText: "Monthly income"),
                SizedBox(height: SizeConfig.yMargin(context, 2)),
                Padding(
                  padding: EdgeInsets.only(
                    right: SizeConfig.xMargin(context, 60),
                  ),
                  child: sharedOutlineRaisedButton(
                    context: context,
                    onPressed: () => null,
                    color: ColorStyles.blue,
                    text: "Save",
                    minWidth: SizeConfig.xMargin(context, 30),
                  ),
                ),
                SizedBox(height: SizeConfig.yMargin(context, 2.5)),
              ],
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
