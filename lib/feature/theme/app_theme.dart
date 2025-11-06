import 'package:flutter/material.dart';
import 'package:Hayyak/feature/theme/app_color.dart';

/// Light Mode
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.lightWhiteColor,
  fontFamily: 'NotoSansArabic',
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.lightWhiteColor,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 44,
      fontFamily: 'NotoSansArabic',
    ),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(color: Colors.black),
    displayMedium: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'NotoSansArabic',
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 1.57,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      height: 2.0,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      color: AppColor.purpleColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'NotoSansArabic',
      ),
      foregroundColor: Colors.white,
      backgroundColor: AppColor.purpleColor,
      fixedSize: Size(122, 65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  ),
  searchBarTheme: SearchBarThemeData(
    elevation: WidgetStateProperty.all(0.0),
    hintStyle: WidgetStatePropertyAll<TextStyle>(
      TextStyle(
        color: Color(0x661E1E2C),
        fontSize: 14,
        fontFamily: 'NotoSansArabic',
        fontWeight: FontWeight.w400,
        height: 2.14,
      ),
    ),
    backgroundColor: WidgetStatePropertyAll(Color(0x191E1E2C)),
    shape: WidgetStatePropertyAll<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  ),
);

/// Dark Mode
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.fontColorBlack,
  fontFamily: 'NotoSansArabic',
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.fontColorBlack,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 1.57,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.white,
    brightness: Brightness.dark,
  ),
);
