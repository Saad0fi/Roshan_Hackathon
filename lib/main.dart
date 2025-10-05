import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'feature/authentication/screen/authentication_screen.dart';
import 'feature/map/screen/map_screen.dart';
import 'feature/navigation/screen/navigation_screen.dart';
import 'feature/splash/screen/splash_screen.dart';
import 'feature/theme/app_theme.dart';

void main() async {
  //binding is initialized
  WidgetsFlutterBinding.ensureInitialized();


  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('ar'),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {

  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {


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
      //  AuthenticationScreen()
      // MapScreen(),
      SplashScreen(),
    //  home: NavigationScreen(toggleThemeMode: _toggleThemeMode),
     // themeMode: _themeMode,
    );
  }
}
