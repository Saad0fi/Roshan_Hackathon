import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshan/feature/theme/app_color.dart';

/// Light Mode
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.lightWhiteColor,
  fontFamily:  'NotoSansArabic',
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.lightWhiteColor,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.w400,fontSize: 44,
    fontFamily: 'Lalezar'),
    bodyLarge: TextStyle(color: Colors.black),
    displayMedium:   TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,
    fontFamily: 'NotoSansArabic'),
    bodyMedium: TextStyle(fontSize: 18,height: 2.0, fontWeight: FontWeight.bold ),
    bodySmall: TextStyle(
      color: AppColor.purpleColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
     // fontFamily: 'JosefinSans',
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      foregroundColor: Colors.white, //AppColor.Text_white,
      backgroundColor: AppColor.purpleColor, //Color(0xffE3562A),
      fixedSize: Size(122, 65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  ),
);

/// Dark Mode
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.lightBlackColor,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xff1E1E2C),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  ),
  textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
);
