import 'package:flutter/material.dart';
import 'package:roshan/feature/onboarding/screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller, _stretchController;
  late Animation<double> _animation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    /// duration for first animation slideAnimation
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -0.5),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    /// duration for first animation stretchAnimation
    _stretchController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _stretchController, curve: Curves.easeOut),
    );

    /// Delay until the second start
    Future.delayed(Duration(seconds: 2), () {
      _stretchController.forward();
    });

    _controller.forward();

    /// move to onboarding screen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 4), () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/image 6.png")),
              SlideTransition(
                position: _slideAnimation,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    int stretchCount = (_animation.value)
                        .round();
                    print(_animation.value);
                    String stretch = 'ـ' * stretchCount;
                    return Text(
                      'حيّ${stretch}ك',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
