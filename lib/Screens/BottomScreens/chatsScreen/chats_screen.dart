import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game_tourney/UiHelper/app_color.dart';
import 'package:game_tourney/UiHelper/app_images.dart';

import '../../../UiHelper/helper.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  int changeChats = 0;

  List<Widget> chatTypeList (){
      return [
        Card(
          color: changeChats == 0 ? AppColor.blueColor2 : AppColor.clayColor,
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 30.w,
            ),
            child: Text("All Chats", style: textStyle()),
          ),
        ),
        Card(
          color: changeChats == 1 ? AppColor.blueColor2 : AppColor.clayColor,
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 30.w,
            ),
            child: Text("Primary", style: textStyle()),
          ),
        ),
        Card(
          color: changeChats == 2 ? AppColor.blueColor2 : AppColor.clayColor,
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 30.w,
            ),
            child: Text("group Chats", style: textStyle()),
          ),
        ),
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         SizedBox(
           height: 43,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: chatTypeList().length,
             itemBuilder: (context, index) {
           return InkWell(
               onTap: (){
                 print(index);
                 setState(() {
                   changeChats = index;
                 });
               },
               child: chatTypeList()[index]);
         })),

          if(changeChats == 0)...[
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGrey
                      ),
                      height: 68,
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage(AppImages.profileImg)),
                        title: Text(
                            "OP Player"
                        ),
                        subtitle: Row(
                          children: [
                            Text("4+ message"),
                            Text("3h")
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            )
          ] else if(changeChats == 1)...[
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGrey
                      ),
                      height: 68,
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage(AppImages.profileImg)),
                        title: Text(
                            "BGMI Player"
                        ),
                        subtitle: Row(
                          children: [
                            Text("1+ message"),
                            Text("3h")
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            )
          ]else...[
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGrey
                      ),
                      height: 68,
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage(AppImages.profileImg)),
                        title: Text(
                            "BGMI Group"
                        ),
                        subtitle: Row(
                          children: [
                            Text("1+ message"),
                            Text("3h")
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            )
          ]
        ],
      ),
    );
  }
}
