import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Urbanist",
    primaryColor: AppColors.mainGreen,
    scaffoldBackgroundColor: Colors.white,
    splashColor: Colors.blue,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.mainGreen,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: AppColors.mainGreen,
      error: Colors.red,
      onError: Colors.black,
      surface: Colors.transparent,
      onSurface: Colors.black,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thickness: WidgetStateProperty.all(8),
      thumbColor: WidgetStatePropertyAll(AppColors.mainGreen),
      thumbVisibility: WidgetStatePropertyAll(true),
      trackVisibility: WidgetStatePropertyAll(true),
      mainAxisMargin: 20,
    ),
  );
}
