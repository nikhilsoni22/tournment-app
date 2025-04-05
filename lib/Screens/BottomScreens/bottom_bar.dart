import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_tourney/Customs/custom_app_bar.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/helper.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'HomeScreens/home_screen.dart';
import 'Profile/profile_screen.dart';
import 'RankingScreen/ranking_Screen.dart';
import 'chatsScreen/chats_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        image: tab == 0 ? AppIcons.gamingRemote : null,
        title: tab == 0 ? "home" : tab == 1 ? "Ranking" : tab == 2 ? "Tournaments Chats" : "Profile",
      ),
      body: PersistentTabView(
        onTabChanged: (value) {
          setState(() {
            tab = value;
          });
        },
        backgroundColor: AppColor.lightGrey,
        popAllScreensOnTapAnyTabs: true,
        tabs: [
          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              icon: Icon(Icons.home),
              title: "Home",
              textStyle: textStyle(
                color: Colors.black,
                fontFamily: AppFonts.mplusBold,
                size: 13,
              ),
            ),
          ),
          PersistentTabConfig(
            screen: RankingScreen(),
            item: ItemConfig(
              icon: ImageIcon(AssetImage(AppIcons.ranking)),
              title: "Ranking",
              textStyle: textStyle(
                color: Colors.black,
                fontFamily: AppFonts.mplusBold,
                size: 13,
              ),
            ),
          ),
          PersistentTabConfig(
            screen: ChatsScreen(),
            item: ItemConfig(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              title: "Chats",
              textStyle: textStyle(
                color: Colors.black,
                fontFamily: AppFonts.mplusBold,
                size: 13,
              ),
            ),
          ),

          PersistentTabConfig(
            screen: ProfileScreen(),
            item: ItemConfig(
              icon: ImageIcon(AssetImage(AppIcons.personIcon), size: 22),
              title: "Profile",
              textStyle: textStyle(
                color: Colors.black,
                fontFamily: AppFonts.mplusBold,
                size: 13,
              ),
            ),
          ),
        ],
        navBarBuilder:
            (navBarConfig) => Style1BottomNavBar(
              navBarDecoration: NavBarDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
              ),
              navBarConfig: navBarConfig,
            ),
      ),
    );
  }
}
