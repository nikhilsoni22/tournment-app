import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_tourney/Customs/custom_button.dart';
import 'package:game_tourney/Customs/custom_text_field.dart';
import 'package:game_tourney/Screens/AuthScreens/signup_page.dart';
import 'package:game_tourney/Screens/BottomScreens/bottom_bar.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/app_strings.dart';
import 'package:game_tourney/UiHelper/helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.darkBlueColor, AppColor.lightBlueColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(AppImages.logo, scale: 1.4),
                  Image.asset(AppImages.logoString, scale: 1.4),
                  Text(
                    AppStrings.tournamentPlatform,
                    style: textStyle(
                      size: 13.sp,
                      color: AppColor.lightGrayColor,
                      shadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 6,
                          spreadRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 20,
                children: [
                  Text(
                    AppStrings.welcomeText,
                    style: textStyle(
                      size: 24.sp,
                      shadow: [
                        BoxShadow(
                          color: Colors.grey.shade800,
                          blurRadius: 8,
                          spreadRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    AppStrings.loginToAccess,
                    style: textStyle(
                      size: 14.sp,
                      color: AppColor.lightGrayColor,
                      shadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 6,
                          spreadRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 25,
                children: [
                  CustomTextField(
                    prefixIcon: Icons.person,
                    hintText: "Enter username",
                  ),
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextField(
                        suffixIcon: Icons.visibility_off_outlined,
                        hintText: "Enter password",
                        prefixIcon: Icons.lock,
                      ),
                      Text("forgot password?", style: textStyle(size: 14)),
                    ],
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                    btnname: "LOGIN",
                  )
                ],
              ),
              Column(
                spacing: 10,
                children: [
                  Text("Or continue with", style: textStyle(size: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.googleIcon, scale: 1.5),
                      wSpace(width: 60),
                      Image.asset(AppIcons.facebook, scale: 1.5),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.donthaveAcc, style: textStyle(size: 13)),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => SignupPage()));
                        },
                        child: Text(
                          AppStrings.signUp,
                          style: textStyle(size: 13, color: AppColor
                              .blueColor2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
