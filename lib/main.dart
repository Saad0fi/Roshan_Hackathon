import 'package:flutter/material.dart';
import 'package:roshan/feature/authentication/screen/authentication_screen.dart';
import 'package:roshan/feature/onboarding/screen/onboarding_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:roshan/feature/splash/screen/splash_screen.dart';
import 'package:roshan/feature/otp/screens/otp_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'feature/chats/screen/chats_screen.dart';
import 'feature/navigation/screen/navigation_screen.dart';
import 'feature/theme/app_theme.dart';

void main() async {
  //binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // //create instance
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // //get the initial isDarkMode
  // bool initialIsDarkMode =
  //     prefs.getBool('isDarkMode') ?? ThemeMode.system == ThemeMode.light;
  // bool initialActive = prefs.getBool('isActive') ?? false;

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('ar'),
      child: MainApp(),
    ),
  );
  // runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  //final bool isLightMode;

  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
// // get theme mode from  shared Preferences
//   late ThemeMode _themeMode = widget.isLightMode
//       ? ThemeMode.dark
//       : ThemeMode.light;
//
//   /// to update theme mode
//   void _toggleThemeMode(ThemeMode mode) {
//     setState(() {
//       _themeMode = mode;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale:context.locale,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
        home: //NavigationScreen(),
      SplashScreen(),
    //  home: NavigationScreen(toggleThemeMode: _toggleThemeMode),
     // themeMode: _themeMode,
    );
  }
}
