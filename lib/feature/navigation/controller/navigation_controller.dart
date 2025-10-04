import 'package:flutter/material.dart';
import 'package:roshan/feature/profile/screen/profile_screen.dart';
import '../../chats/screen/chats_screen.dart';
import '../../home/screen/home_screen.dart';

class NavigationBarController {
  // final Function(ThemeMode)? toggleThemeMode;
  //
  // NavigationBarController({required this.toggleThemeMode});
  int currentIndex = 0;

  /// list of screens*
   List<Widget> screens = [HomeScreen(),HomeScreen(),ChatsScreen(),
    ProfileScreen()];
}
