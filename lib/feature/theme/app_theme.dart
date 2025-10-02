import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xffF5F5F5),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
  ),
  textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xff1E1E2C),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  ),
  textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
);
