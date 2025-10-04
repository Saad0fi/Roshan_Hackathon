import 'package:flutter/material.dart';
import '../../chats/screen/chats_screen.dart';
import '../../home/screen/home_screen.dart';

class NavigationBarController {
  int currentIndex = 0;

  /// list of screens*
  List<Widget> screens = [HomeScreen(),HomeScreen(),ChatsScreen(),HomeScreen()];
}
