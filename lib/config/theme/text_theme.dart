import 'package:flutter/material.dart';
import 'package:jeu_themes/config/resources/values_manager.dart';
import 'color_theme.dart';

class FontConstants {
  static const String fontFamily = "Cairo";
}

class TextThemeManager {
  static final textLightTheme = TextTheme(
    ///DISPLAY
    displayLarge: TextStyle(
      fontSize: AppSize.hs20 * 2.2,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    displayMedium: TextStyle(
      fontSize: AppSize.hs20 * 1.7,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    displaySmall: TextStyle(
      fontSize: AppSize.hs24,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),

    //HEADLINE
    headlineLarge: TextStyle(
      fontSize: AppSize.hs24,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    headlineMedium: TextStyle(
      fontSize: AppSize.hs20,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    headlineSmall: TextStyle(
      fontSize: AppSize.hs18,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),

    //TITLE
    titleLarge: TextStyle(
      fontSize: AppSize.hs16,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    titleMedium: TextStyle(
      fontSize: AppSize.hs14,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),
    titleSmall: TextStyle(
      fontSize: AppSize.hs12,
      fontWeight: FontWeight.w700,
      color: ColorManager.black,
    ),

    //BODY
    bodyLarge: TextStyle(
      fontSize: AppSize.hs18,
      fontWeight: FontWeight.w500,
      color: ColorManager.black,
    ),
    bodyMedium: TextStyle(
      fontSize: AppSize.hs16,
      fontWeight: FontWeight.w500,
      color: ColorManager.black,
    ),
    bodySmall: TextStyle(
      fontSize: AppSize.hs14,
      fontWeight: FontWeight.w500,
      color: ColorManager.black,
    ),

    //LABEL
    labelLarge: TextStyle(
      fontSize: AppSize.hs14,
      fontWeight: FontWeight.w400,
      color: ColorManager.black,
    ),
    labelMedium: TextStyle(
      fontSize: AppSize.hs12,
      fontWeight: FontWeight.w400,
      color: ColorManager.black,
    ),
    labelSmall: TextStyle(
      fontSize: AppSize.hs10,
      fontWeight: FontWeight.w400,
      color: ColorManager.black,
    ),
  );
}
