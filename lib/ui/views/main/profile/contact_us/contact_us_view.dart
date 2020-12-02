import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:lsi_mobile/ui/shared/const_color.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:lsi_mobile/ui/shared/size_config/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsView extends StatelessWidget {
  final String contactUsImg = "assets/images/contact_us.png";
  final String whatsappLogo = "assets/svgs/whatsapp_logo.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.grey8,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorStyles.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorStyles.black),
        title: Text(
          "Contact Us",
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig.textSize(context, 5),
            color: ColorStyles.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.xMargin(context, 5),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.yMargin(context, 10)),
            ClipRRect(
              child: Image.asset(
                contactUsImg,
                fit: BoxFit.fill,
                height: SizeConfig.yMargin(context, 20),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            SizedBox(height: SizeConfig.yMargin(context, 8)),
            sharedInfoButton(
              context: context,
              icon: Icon(
                Icons.phone_in_talk_outlined,
                color: ColorStyles.dark,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Call us",
              background: ColorStyles.lGrey.withOpacity(0.4),
              colorIcon: false,
              onTap: () async {
                String link = "tel: ${FileReader.getAppConfig().phone}";
                if (await canLaunch(link)) {
                  await launch(link);
                } else {
                  FlushbarHelper.createError(
                    message: "Could not launch $link",
                    duration: Duration(seconds: 3),
                  ).show(context);
                }
              },
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedInfoButton(
              context: context,
              icon: Icon(
                Icons.mail_outline_rounded,
                color: ColorStyles.blue,
                size: SizeConfig.textSize(context, 8),
              ),
              text: "Email us",
              background: ColorStyles.blue.withOpacity(0.08),
              colorIcon: false,
              onTap: () async {
                String link = "mailto:${FileReader.getAppConfig().email}";
                if (await canLaunch(link)) {
                  await launch(link);
                } else {
                  FlushbarHelper.createError(
                    message: "Could not launch $link",
                    duration: Duration(seconds: 3),
                  ).show(context);
                }
              },
            ),
            SizedBox(height: SizeConfig.yMargin(context, 3)),
            sharedInfoButton(
              context: context,
              icon: SvgPicture.asset(
                whatsappLogo,
                height: SizeConfig.textSize(context, 8),
              ),
              text: "Chat with us",
              background: ColorStyles.green4.withOpacity(0.1),
              colorIcon: false,
              onTap: () async {
                String link =
                    "https://wa.me/${FileReader.getAppConfig().whatsApp}?text=Hello \nGood morning, my name is ";
                if (await canLaunch(link)) {
                  await launch(
                    link,
                    forceSafariVC: false,
                    forceWebView: false,
                    enableJavaScript: true,
                  );
                } else {
                  FlushbarHelper.createError(
                    message: "Could not launch $link",
                    duration: Duration(seconds: 3),
                  ).show(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
