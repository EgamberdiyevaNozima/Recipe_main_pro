import 'package:flutter/material.dart';

class AppColors {
  static const redPinkMain = Color(0xFFFD5D69);
  static const beigeColor = Color(0xFF1C0F0D);
  static const pinkSub = Color(0xFFEC888D);
  static const pink = Color(0xFFFFC6C9);

  static const Color textColor = Color(0xFF3E2823);

  static const Color milkWhite = Color(0xFFFFFDF9);



  static const whiteColor = Color(0xffFFFFFF);
  static const backgroundColor = Color(0xff1C0F0D);
  static const pinkColor = Color(0xffEC888D);

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.redPinkMain,
    onPrimary: Colors.white,
    secondary: AppColors.pink,
    onSecondary: AppColors.pinkSub,
    error: Colors.red,
    onError: Colors.white,
    surface: AppColors.beigeColor,
    onSurface: Colors.white,
  );


}
