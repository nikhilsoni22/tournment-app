import 'package:flutter/material.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            profileImage(),
            records(),
            achivments(),
            recentActivity()
          ],
        ),
      ),
    ),
    );
  }

  Widget profileImage(){
    return Column(
      children: [
        CircleAvatar(
           backgroundColor: AppColor.whiteColor,
          radius: 70,
          child: Image.asset(AppImages.profileImg, fit: BoxFit.cover),
        ),
        Text("Nikhil Soni", style: textStyle(size: 18, color: Colors.black, fontFamily: AppFonts.mplusBold)),
        Text("ID: 09090")
      ],
    );
  }

  Widget records(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("78", style: textStyle(size: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                  Text("Tournaments", style: textStyle(size: 16, fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("56", style: textStyle(size: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                  Text("Matches", style: textStyle(size: 16, fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("34", style: textStyle(size: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                  Text("Wins", style: textStyle(size: 16, fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget achivments () {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        spacing: 25,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Achievements",style: textStyle(size: 20, fontWeight: FontWeight.bold, color: Colors.black)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Column(
                  spacing: 10,
                  children: [
                   Image.asset(AppIcons.goldTrophy),
                    Text("Tournament Champian", style: textStyle(size: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),

              Column(
                  children: [
                   Image.asset(AppIcons.goldBatch),
                    Text("Top Player", style: textStyle(size: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),

              Column(
                spacing: 7,
                  children: [
                   Image.asset(AppIcons.starBatch),
                    Text("Pro-Player", style: textStyle(size: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget recentActivity() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Activity", style: textStyle(size: 20, fontWeight: FontWeight.bold, color: Colors.black)),
          ListView.builder(
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColor.lightGrey,
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(AppImages.coc, fit: BoxFit.cover))),
                  title: Text("COC",style: textStyle(color: Colors.black, fontFamily: AppFonts.mplusBold)),
                    subtitle: Text("Today"),
                    trailing: Text("Win", style: textStyle(size: 15, color: Colors.lightGreen, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
