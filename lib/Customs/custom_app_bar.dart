import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../UiHelper/app_icons.dart';
import '../UiHelper/helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  String title;
  String? image;
  CustomAppBar({super.key, this.title = '', this.image});

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
        Icon(Icons.search, size: 27),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0),
          child: ImageIcon(AssetImage(AppIcons.notificationIcon), color: Colors.black),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
