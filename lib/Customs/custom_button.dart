import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../UiHelper/app_color.dart';
import '../UiHelper/app_fonts.dart';
import '../UiHelper/helper.dart';

class CustomButton extends StatelessWidget {
  final String btnname;
  final double btnHeight;
  final double btnWidth;
  final VoidCallback? onTap;

  CustomButton({super.key,
    this.btnname = '',
    this.btnHeight = 48,
    this.btnWidth = double.infinity,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: AppColor.darkgrey, width: 2),
        ),
        child: Center(
          child: Text(
            btnname,
            style: textStyle(
              color: AppColor.blueColor,
              fontFamily: AppFonts.muktaVaaniBold,
            ),
          ),
        ),
      ),
    );
  }
}
