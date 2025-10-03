import 'package:flutter/material.dart';
import '../../home/screen/home_screen.dart';

class NavigationBarController {
  int currentIndex = 0;

  /// list of screens*
  List<Widget> screens = [HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen()];
}
