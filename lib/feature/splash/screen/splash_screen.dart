
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller,_stretchController;
  late Animation<double> _animation;
  late Animation<Offset> _slideAnimation;


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );


        _slideAnimation=  Tween<Offset>(
          begin: Offset(0, -0.5), // 👈 from top of screen
          end: Offset(0, 0),
        ).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ));



    // STRETCH animation controller (1 second, for example)
    _stretchController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 8,
    ).animate(CurvedAnimation(
      parent: _stretchController,
      curve: Curves.easeOut,
    ));

    // Delay starting the stretch animation until slide finishes
    Future.delayed(Duration(seconds: 1), () {
      _stretchController.forward();
    });

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
            SlideTransition(
                position: _slideAnimation,
            child:
            AnimatedBuilder(
                animation: _animation,
                builder: (context,child) {
                  int stretchCount = (_animation.value ).round(); // adjust divisor to control speed
                 print(_animation.value);
                  String stretch = 'ـ' * stretchCount;
                  return Text(
                    'حيّ${stretch}ك',
                    style: TextStyle(fontSize: 44,
                        fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  );
                }
            )
            ),
          ]  )
          )),
      );
  }
}
