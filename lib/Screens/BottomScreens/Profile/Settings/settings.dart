import 'package:flutter/material.dart';
import 'package:game_tourney/Customs/custom_setting_widget.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/helper.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Settings", style: textStyle(color: Colors.black, fontFamily: AppFonts.mplusBold)),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, size: 18,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profilePic(),
            hSpace(height: 30),
            accountSettings(),
            appSettings(),
            gaming(),
            support(),
          ],
        ),
      ),
    );
  }

  Widget profilePic() {
    return Center(
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(AppImages.profileImg),
        child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(AppIcons.camera, scale: 2)),
      ),
    );
  }

  Widget accountSettings () {
    return CustomSettingWidget(
        headingText: "Account Settings",
        rowOneImage: AppIcons.personIcon,
        rowOneText: "Edit Profile",
        rowTwoImage: AppIcons.notificationIcon,
        rowTwoText: "Notifications",
        rowThreeImage: AppIcons.key,
        rowThreeText: "Change Password"
    );
  }

  Widget appSettings () {
    return CustomSettingWidget(
        headingText: "App Settings",
        rowOneImage: AppIcons.languageIcon,
        rowOneText: "Language",
        rowTwoImage: AppIcons.halfMoon,
        rowTwoText: "Dark Mode",
        switchButton: Switch(
            padding: EdgeInsets.zero,
            value: false, onChanged: (value){}),
        rowThreeImage: AppIcons.lock,
        rowThreeText: "Edit profile"
    );
  }

  Widget gaming () {
    return CustomSettingWidget(
        headingText: "Gaming",
        rowOneImage: AppIcons.gamingRemote,
        rowOneText: "Gaming categories",
        rowTwoImage: AppIcons.grayGamingRemote,
        rowTwoText: "Match preferances",
        rowThreeImage: AppIcons.region,
        rowThreeText: "Region selection"
    );
  }

  Widget support () {
    return CustomSettingWidget(
        headingText: "Help Center",
        rowOneImage: AppIcons.questionMark,
        rowOneText: "Help center",
        rowTwoImage: AppIcons.shield,
        rowTwoText: "Term and conditions",
        rowThreeImage: AppIcons.paper,
        rowThreeText: "privacy policy"
    );
  }
}
