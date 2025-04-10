import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../UiHelper/app_color.dart';
import '../UiHelper/app_icons.dart';
import '../UiHelper/helper.dart';

class CustomSettingWidget extends StatelessWidget {
  String headingText;
  String rowOneImage;
  String rowOneText;
  String rowTwoImage;
  String rowTwoText;
  Widget? switchButton;
  String rowThreeImage;
  String rowThreeText;

  CustomSettingWidget({super.key,
    required this.headingText,
    required this.rowOneImage,
    required this.rowOneText,
    required this.rowTwoImage,
    required this.rowTwoText,
    this.switchButton,
    required this.rowThreeImage,
    required this.rowThreeText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headingText, style: textStyle(size: 16, fontWeight: FontWeight.w400, color: Colors.black54)),
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.lightGrey
            ),
            child: Column(
              children: [
                ListTile(
                  leading: ImageIcon(AssetImage(rowOneImage), color: Colors.black),
                  title: Text(rowOneText, style: textStyle(size: 17, color: Colors.black, fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
                Divider(
                  height: 0,
                  thickness: 2,
                ),
                ListTile(
                  leading: ImageIcon(AssetImage(rowTwoImage),color: Colors.black,),
                  title: Text(rowTwoText, style: textStyle(size: 17, color: Colors.black, fontWeight: FontWeight.w500)),
                  trailing: switchButton ?? Icon(Icons.arrow_forward_ios, size: 20),
                ),
                Divider(
                  height: 0,
                  thickness: 2,
                ),
                ListTile(
                  leading: ImageIcon(AssetImage(rowThreeImage),color: Colors.black),
                  title: Text(rowThreeText, style: textStyle(size: 17, color: Colors.black, fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
