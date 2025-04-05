import 'package:flutter/cupertino.dart';
import 'package:game_tourney/UiHelper/app_fonts.dart';

SizedBox wSpace({double width = 20}) {
  return SizedBox(width: width);
}

SizedBox hSpace({double height = 20}) {
  return SizedBox(height: height);
}

TextStyle textStyle(
    {double size = 18, Color? color = CupertinoColors.white, List<
        Shadow>? shadow, FontWeight? fontWeight, String? fontFamily}) {
  return TextStyle(
      fontSize: size,
      color: color,
      shadows: shadow,
      fontWeight: fontWeight,
      fontFamily: fontFamily
  );
}

TextStyle textStyleLiterataBold({
  String fontFamily = "Literate24bold",
  double size = 18,
  Color? color,
  TextDecoration? decoration,
}) {
  return TextStyle(
      fontSize: size,
      fontFamily: fontFamily,
      color: color,
      decoration: decoration
  );
}