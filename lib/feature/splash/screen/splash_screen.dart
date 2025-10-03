
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:roshan/feature/onboarding/screen/onboarding_screen.dart';
// import 'package:animated_splashscreen/animated_splashscreen.dart'; // or flutter_animated_splash


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Offset> _slideAnimation;


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );


        _slideAnimation=  Tween<Offset>(
          // begin: Offset(0, 1),   // Off-screen at bottom
          // end: Offset(0, 0),     // In position
          begin: Offset(0, -1), // 👈 from top of screen
          end: Offset(0, 0),
        ).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.easeOut,
        ));
    _animation = Tween<double>(
      begin: 0, end: 40
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image(
          image: AssetImage("assets/images/image 6.png")),
      //     SlideTransition(
      //       position: _slideAnimation,
      //       child:
      //       Image(
      //           image: AssetImage("assets/images/image 6.png"))
      //     ),
          SlideTransition(
              position: _slideAnimation,
          child:
          AnimatedBuilder(
              animation: _animation,
              builder: (context,child) {
              int stretchCount = (_animation.value / 5).round(); // adjust divisor to control speed
            String stretch = 'ـ' * stretchCount;

            return Text(
              'حيّ${stretch}ك',
              style: TextStyle(fontSize: 44,
                  fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
            );
              }
              ))
        ]  )
          )),
      );
  }
}
