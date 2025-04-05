import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_tourney/Customs/custom_card.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/helper.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({super.key});

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  bool isMonth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomCard(text: "COC", image: AppImages.coc),
                );
              },
            ),
          ),
          hSpace(),
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isMonth = false;
                  });
                },
                child: Card(
                  color: AppColor.lightBlueColor,
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 30.w,
                    ),
                    child: Text("All time", style: textStyle()),
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    isMonth = true;
                  });
                },
                child: Card(
                  color: AppColor.clayColor,
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20.w,
                    ),
                    child: Text("This Month", style: textStyle()),
                  ),
                ),
              ),
            ],
          ),

          if(isMonth == true)...[
            Expanded(
              child: ListView.builder(
                itemCount: itemMonthList.length,
                itemBuilder: (context, index) {
                  final items = itemMonthList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            index == 0
                                ? AppColor.goldenColor
                                : index == 1
                                ? AppColor.grayColor
                                : index == 2
                                ? AppColor.bronzeColor
                                : AppColor.lightGrey,
                           index > 2 ? AppColor.lightGrey : AppColor.darkgrey,
                          ],
                        ),
                      ),
                      height: 68,
                      width: double.infinity,
                      child: ListTile(
                        leading: items.image,
                        title: Text(items.name.toString(), style: textStyle(color: Colors.black, fontFamily: AppFonts.mplusBold, size: 16)),
                        subtitle: Text(items.score.toString(),style: textStyle(size: 14, color: Colors.black, fontWeight: FontWeight.w400)),
                        trailing: index == 0 ? Image.asset(AppIcons.goldMedals, scale: 1.4) : index == 1 ? Image.asset(AppIcons.silverMedals, scale: 1.4) : index == 2 ? Image.asset(AppIcons.bronzeMedals, scale: 1.4) : Text("#${index + 1}",style: textStyle(color: Colors.black)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ] else...[

            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  final items = itemList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            index == 0
                                ? AppColor.goldenColor
                                : index == 1
                                ? AppColor.grayColor
                                : index == 2
                                ? AppColor.bronzeColor
                                : AppColor.lightGrey,
                          index > 2 ? AppColor.lightGrey : AppColor.darkgrey,
                          ],
                        ),
                      ),
                      height: 68,
                      width: double.infinity,
                      child: ListTile(
                        leading: items.image,
                        title: Text(items.name.toString(), style: textStyle(color: Colors.black, fontFamily: AppFonts.mplusBold, size: 16)),
                        subtitle: Text(items.score.toString(),style: textStyle(size: 14, color: Colors.black, fontWeight: FontWeight.w400)),
                        trailing: index == 0 ? Image.asset(AppIcons.goldMedals, scale: 1.4) : index == 1 ? Image.asset(AppIcons.silverMedals, scale: 1.4) : index == 2 ? Image.asset(AppIcons.bronzeMedals, scale: 1.4) : Text("#${index + 1}",style: textStyle(color: Colors.black)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  List<TempDataModel> itemList = [
    TempDataModel(
      name: "nikhil",
       image: Image.asset(AppImages.profileImg),
      score: "score 2150pts",
    ),
    TempDataModel(
      name: "rakesh",
       image: Image.asset(AppImages.profileImg),
      score: "score 1950pts",
    ),
    TempDataModel(
      name: "dhruv",
       image: Image.asset(AppImages.profileImg),
      score: "score 1850pts",
    ),
    TempDataModel(
      name: "monu",
       image: Image.asset(AppImages.profileImg),
      score: "score 1550pts",
    ),
    TempDataModel(
      name: "sonu",
       image: Image.asset(AppImages.profileImg),
      score: "score 1050pts",
    ),
    TempDataModel(
      name: "sonu",
       image: Image.asset(AppImages.profileImg),
      score: "score 1050pts",
    ),

    TempDataModel(
      name: "sonu",
       image: Image.asset(AppImages.profileImg),
      score: "score 1050pts",
    ),

    TempDataModel(
      name: "sonu",
       image: Image.asset(AppImages.profileImg),
      score: "score 1050pts",
    ),
  ];


  List<TempMonthDataModel> itemMonthList = [
    TempMonthDataModel(
      name: "jayansh",
       image: Image.asset(AppImages.profileImg),
      score: "score 2150pts",
    ),  TempMonthDataModel(
      name: "nikhil",
       image: Image.asset(AppImages.profileImg),
      score: "score 2150pts",
    ),  TempMonthDataModel(
      name: "dhruv",
       image: Image.asset(AppImages.profileImg),
      score: "score 1440pts",
    ),  TempMonthDataModel(
      name: "rakshit",
       image: Image.asset(AppImages.profileImg),
      score: "score 1200pts",
    ),  TempMonthDataModel(
      name: "umesh",
       image: Image.asset(AppImages.profileImg),
      score: "score 120pts",
    ),
  ];

}


class TempDataModel {
  String? name;
  String? score;
  Image? image;
  TempDataModel({
    this.name,
    this.score,
    this.image
});
}

class TempMonthDataModel {
  String? name;
  String? score;
  Image? image;
  TempMonthDataModel({
    this.name,
    this.score,
    this.image
});
}