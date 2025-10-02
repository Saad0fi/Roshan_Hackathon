import 'package:flutter/material.dart';
import 'package:roshan/feature/authentication/screen/authentication_screen.dart';
import 'package:roshan/feature/onboarding/screen/onboarding_screen.dart';
import 'package:easy_localization/easy_localization.dart';

import 'feature/theme/app_theme.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar'),
        child: MainApp()
    ),
  );
  // runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale:context.locale,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
     // themeMode: ThemeMode.system,
      home: AuthenticationScreen()
      //OnboardingScreen(),
    );
  }
}
