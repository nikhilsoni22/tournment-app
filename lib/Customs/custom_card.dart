import 'package:flutter/material.dart';

import '../UiHelper/app_color.dart';
import '../UiHelper/app_icons.dart';
import '../UiHelper/helper.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final String? image;
  final double cardHeight;
  final double cardwidth;
  CustomCard({super.key,
    this.text = '',
    this.image,
    this.cardHeight = 120,
    this.cardwidth = 110
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: cardHeight,
      width: cardwidth,
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          image == null ? SizedBox() : Image.asset(image!, scale: 1.4),
          Text(text, style: textStyle(color: Colors.black45, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
