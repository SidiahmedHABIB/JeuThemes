import 'package:flutter/material.dart';

class ColorManager {
  //LIGHT MODE COLORS
  static const Color mainColor = Color(0xFF5063BF);
  static const Color lightMainColor = Color(0x49C7D3EB);
  static const Color grey = Color(0x73000000);
  static const Color blue = Color(0xFF8EDFEB);
  static const Color lightBlue = Color(0xFFCEF8FF);
  static const Color white = Color(0xFFf6f6f5);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFFA3939);
  static const Color green = Color(0xFF22B843);

  //DARK MODE COLORS
  // static const Color darkMainColor = Color(0xffBF7164);
}

class ColorTheme {
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: ColorManager.mainColor,
    onPrimary: ColorManager.lightMainColor,
    secondary: ColorManager.grey,
    onSecondary: Color(0xFFF0F0F0),
    error: ColorManager.red,
    onError: ColorManager.white,
    background: ColorManager.white,
    onBackground: ColorManager.black,
    surface: ColorManager.white,
    onSurface: ColorManager.white,
    tertiary: ColorManager.green,
    tertiaryContainer: ColorManager.blue,
    onTertiaryContainer: ColorManager.lightBlue,
  );

  // ignore: unused_field
  // static const darkColorScheme = ColorScheme(
  //   brightness: Brightness.dark,
  //   primary: ColorManager.mainColor,
  //   onPrimary: ColorManager.white,
  //   secondary: ColorManager.grey,
  //   onSecondary: ColorManager.whiteGrey,
  //   tertiaryContainer: ColorManager.darkGrey,
  //   onTertiaryContainer: ColorManager.black,
  //   error: ColorManager.red,
  //   onError: ColorManager.white,
  //   background: ColorManager.black,
  //   onBackground: ColorManager.white,
  //   surface: ColorManager.black,
  //   onSurface: ColorManager.white,
  // );
}
