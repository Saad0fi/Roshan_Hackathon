import 'package:flutter/material.dart';
import 'package:roshan/feature/authentication/screen/authentication_screen.dart';
import 'package:roshan/feature/common/widget/button_widget.dart';
import 'package:roshan/feature/theme/app_color.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/landing_page.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff1E1E2C).withValues(alpha: 0.3),
                  Color(0xff1E1E2C),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 358,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '...حيّك يبدأ منك ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),

                          SizedBox(height: 10),

                          Text(
                            '...كن جزء من مجتمعك',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),

                    ButtonWidget(
                      type: "Login",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => AuthenticationScreen(),
                          ),
                        );
                      },
                      child: Text("تسجيل الدخول"),
                    ),

                    SizedBox(height: 10),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'الإكمال كضيف',
                        style: TextStyle(
                          color: AppColor.purpleColor,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.purpleColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
