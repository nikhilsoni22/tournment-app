import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../UiHelper/app_icons.dart';
import '../UiHelper/helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  String title;
  String? image;
  bool isSettings = false;
  VoidCallback? onSettingTap;

  CustomAppBar({super.key, this.title = '', this.image, required this.isSettings, this.onSettingTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          image == null ? SizedBox() : ImageIcon(AssetImage(image!),size: 30),
          wSpace(
              width: 5
          ),
          Text(title, style: textStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ],
      ),
      actions: [
       isSettings == false ?  Icon(Icons.search, size: 27) : SizedBox(),
       isSettings == false ?   Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0),
          child:  ImageIcon(AssetImage(AppIcons.notificationIcon), color: Colors.black)) :
       Padding(
         padding: EdgeInsets.symmetric(horizontal: 13.0),
         child:  InkWell(
             onTap: onSettingTap,
             child: Icon(Icons.settings))),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
