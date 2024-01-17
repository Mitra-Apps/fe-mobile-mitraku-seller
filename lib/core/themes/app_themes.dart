import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  AppThemes._();

  //Primary
  static const Color _lightPrimaryColor = Color(0xffffffff);
  static const Color _darkPrimaryColor = Color(0xFF1a222d);

  //Background
  static const Color _lightBackgroundColor = Color(0xffffffff);
  static const Color _darkBackgroundColor = Color(0xFF1a222d);
  static const Color _MainBackgroundColor = Color(0xff000068);

  //Text
  static const Color _lightTextColor = Color(0xff343434);
  static const Color _darkTextColor = Color(0xffffffff);

  //Icon
  static const Color _lightIconColor = Color(0xff000000);
  static const Color _darkIconColor = Color(0xffffffff);

  //Text themes
  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 96, color: _lightTextColor),
    displayMedium: TextStyle(fontSize: 60, color: _lightTextColor),
    displaySmall: TextStyle(fontSize: 48, color: _lightTextColor),
    headlineMedium: TextStyle(fontSize: 34, color: _lightTextColor),
    headlineSmall: TextStyle(fontSize: 24, color: _lightTextColor),
    titleLarge: TextStyle(
      fontSize: 20,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(fontSize: 16, color: _lightTextColor),
    titleSmall: TextStyle(
      fontSize: 14,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: _lightTextColor),
    bodyMedium: TextStyle(fontSize: 14, color: _lightTextColor),
    labelLarge: TextStyle(
      fontSize: 14,
      color: _lightTextColor,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(fontSize: 12, color: _lightTextColor),
    labelSmall: TextStyle(fontSize: 14, color: _lightTextColor),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 96, color: _darkTextColor),
    displayMedium: TextStyle(fontSize: 60, color: _darkTextColor),
    displaySmall: TextStyle(fontSize: 48, color: _darkTextColor),
    headlineMedium: TextStyle(fontSize: 34, color: _darkTextColor),
    headlineSmall: TextStyle(fontSize: 24, color: _darkTextColor),
    titleLarge: TextStyle(
      fontSize: 20,
      color: _darkTextColor,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(fontSize: 16, color: _darkTextColor),
    titleSmall: TextStyle(
      fontSize: 14,
      color: _darkTextColor,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: _darkTextColor),
    bodyMedium: TextStyle(fontSize: 14, color: _darkTextColor),
    labelLarge: TextStyle(
      fontSize: 14,
      color: _darkTextColor,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(fontSize: 12, color: _darkTextColor),
    labelSmall: TextStyle(fontSize: 14, color: _darkTextColor),
  );

  ///Light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: AppThemes._MainBackgroundColor,
    appBarTheme: AppBarTheme(
      color: AppThemes._lightBackgroundColor,
      iconTheme: const IconThemeData(color: _lightIconColor),
      toolbarTextStyle: _lightTextTheme.bodyMedium,
      titleTextStyle: _lightTextTheme.titleLarge,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );

  ///Dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _darkBackgroundColor,
      iconTheme: const IconThemeData(color: _darkIconColor),
      toolbarTextStyle: _darkTextTheme.bodyMedium,
      titleTextStyle: _darkTextTheme.titleLarge,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: _darkTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );
}

class AppColors {
  static final Color mainColor = Color(0xff000068);
  static final Color mainBlackColor = Color(0xff343434);
  static final Color mainWhiteColor = Color(0xffffffff);
  static final Color disabledColor = Color(0xffb4b4b4);
  static final Color disabledLightColor = Color(0xfff0f0f0);
  static final Color warningColor = Color(0xffc0c31f);
  static final Color dangerColor = Color(0xffe23f3f);
}
