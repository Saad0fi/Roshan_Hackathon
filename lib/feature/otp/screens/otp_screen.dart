import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:roshan/feature/common/widget/button_widget.dart';
import 'package:roshan/feature/common/widget/header.dart';
import 'package:roshan/feature/home/screen/home_screen.dart';
import 'package:roshan/feature/navigation/screen/navigation_screen.dart';
import 'package:roshan/feature/theme/app_color.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ادخل رمز التحقق',
                  style: TextStyle(
                    color: AppColor.fontColorBlack,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'XXXXXXXX234 سيتم ارسال رمز التحقق على ',
                  style: TextStyle(color: AppColor.fontColorBlack),
                ),

                SizedBox(height: 40),

                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  cursorColor: Colors.purple,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 80,
                    fieldWidth: 80,

                    activeFillColor: Color(0xffE2E2E2),
                    inactiveFillColor: Color(0xffE2E2E2),
                    selectedFillColor: Color(0xffE2E2E2),
                    activeColor: Colors.purple,
                    inactiveColor: Color(0xffE2E2E2),
                    selectedColor: Colors.purple,

                    fieldOuterPadding: EdgeInsets.symmetric(horizontal: 4),
                  ),
                ),
                SizedBox(height: 30),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: AppColor.fontColorBlack,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(text: 'لم يصلك رمز التحقق ؟ '),
                      TextSpan(
                        text: 'اعاده ارسال رمز التحقق',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColor.fontColorBlack,
                        ),
                      ),
                    ],
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 150),
                ButtonWidget(
                  type: 'Login',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => NavigationScreen(),
                      ),
                    );
                  },
                  child: Text("التحقق"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
