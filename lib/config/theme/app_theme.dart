import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_theme.dart';
import 'text_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorTheme.lightColorScheme,
    textTheme: TextThemeManager.textLightTheme,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
