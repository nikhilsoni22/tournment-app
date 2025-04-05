import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_tourney/UiHelper/helper.dart';

import '../UiHelper/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final double allBorderRadius;
  final String? headText;
  final TextEditingController? controller;

  CustomTextField({super.key,
      this.hintText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.allBorderRadius = 7,
    this.controller,
    this.headText
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headText == null ? SizedBox() : Text(headText!, style: textStyle(size: 16)),
        SizedBox(
          height: 48,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: Icon(suffixIcon),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(prefixIcon),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.darkgrey, width: 2),
                borderRadius: BorderRadius.circular(allBorderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.darkgrey, width: 2),
                borderRadius: BorderRadius.circular(allBorderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.darkgrey, width: 2),
                borderRadius: BorderRadius.circular(allBorderRadius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
