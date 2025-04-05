import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_tourney/Customs/custom_app_bar.dart';
import 'package:game_tourney/Customs/custom_card.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';
import 'package:game_tourney/UiHelper/app_icons.dart';
import 'package:game_tourney/UiHelper/app_images.dart';
import 'package:game_tourney/UiHelper/helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0; // Track current page index
  final List<String> images = [
   AppImages.template,
   AppImages.template,
   AppImages.template,
  ];

  final List<String> prices = [
    "BGMI Pro League", "₹1499", "₹799"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  alignment: Alignment.bottomCenter, // Center content at bottom
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    // Price Box
                    Positioned(
                      left: 23.w,
                      bottom: 28.w,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                               "BGMI Pro League",
                                style: textStyle(fontWeight: FontWeight.bold, size: 15.sp)
                              ),
                              Text("\$1200", style: textStyle(size: 14.sp, fontWeight: FontWeight.bold))
                            ],
                          ),
                          wSpace(
                            width: 40.w
                          ),
                          Container(
                            height: 28.w,
                            width: 90.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.lightBlueColor,
                            ),
                            child: Center(child: Text("Join now", style: textStyle(size: 13.sp, fontWeight: FontWeight.bold))),
                          )
                        ],
                      ),
                    ),
                    // Indicator Inside Image at Bottom
                    Positioned(
                      bottom: 15.w, // Keep indicator at bottom inside image
                      child: buildIndicator(),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                height: 180.w,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: false,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 110.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(AppIcons.createIcon, scale: 1.3.r),
                        Text("create", style: textStyle(color: Colors.black45, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
        
                  Container(
                    height: 110.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(AppIcons.trophy, scale: 1.3.r),
                        Text("Join", style: textStyle(color: Colors.black45, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
        
                  Container(
                    height: 110.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(AppIcons.playIcon, scale: 1.3.r),
                        Text("Watch Live", style: textStyle(color: Colors.black45, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            hSpace(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Live tournaments", style: textStyle(size: 16.sp, color: Colors.black, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("view all", style: textStyle(fontWeight: FontWeight.bold, color: Colors.black45, size: 13.sp)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 12.sp, color: Colors.black45)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset(AppImages.gameThumbnail),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("BGMI", style: textStyle(color: Colors.black, fontFamily: AppFonts.mplusBold)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(AppIcons.fire),
                                    Text("LIVE", style: textStyle(color: Colors.red, fontFamily: AppFonts.mplusBold))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("All games", style: textStyle(fontFamily: AppFonts.mplusBold, color: Colors.black)),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                        child: CustomCard(
                          image: AppImages.coc,
                          text: "COC",
                        ),
                      );
                    },),
                  )
                ],
              ),
            ),
            hSpace()
          ],
        ),
      ),
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: images.length,
    effect: WormEffect(
      dotHeight: 8,
      dotWidth: 8
    )
  );
}
