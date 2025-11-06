import 'package:flutter/material.dart';
import 'package:Hayyak/feature/landing/screens/landing_page.dart';
import '../../theme/app_color.dart';
import '../widget/profile_dtl_widget.dart';
import '../widget/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: !isDark
                ? LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.lightPurpleColor,
                      AppColor.whiteColor_02,
                      AppColor.whiteColor_03,
                      AppColor.whiteColor_03,
                      AppColor.whiteColor_03,
                    ],
                  )
                : LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.darkPurpleColor,
                      AppColor.darkPurpleColor_01,
                      AppColor.fontColorBlack,
                      AppColor.fontColorBlack,
                      AppColor.fontColorBlack,
                    ],
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 60,
                            left: 20,
                            right: 20,
                            bottom: 20,
                          ),
                          width: 392,
                          decoration: !isDark
                              ? BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(
                                        0xff1E1E2C1A,
                                      ).withValues(alpha: 0.1),
                                      spreadRadius: 5,
                                      blurRadius: 4,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                )
                              : BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.08),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(
                                        0xff1E1E2C1A,
                                      ).withValues(alpha: 0.1),
                                      spreadRadius: 5,
                                      blurRadius: 4,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text("أنس", style: TextStyle(fontSize: 30)),
                              Row(
                                spacing: 5,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/Group (5).png",
                                    ),
                                  ),
                                  Text(
                                    "قرطبة ، الرياض",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProfileDtlWidget(
                                    image: "assets/images/image 17.png",
                                    number: "520",
                                    title: "نقاطي",
                                    color: AppColor.purpleColor,
                                  ),
                                  ProfileDtlWidget(
                                    image: "assets/images/image 15.png",
                                    number: "2390",
                                    title: "تصنيفي",
                                    color: AppColor.greenColor,
                                  ),
                                  ProfileDtlWidget(
                                    image: "assets/images/gift-02.png",
                                    number: "2",
                                    title: "جوائزي",
                                    color: AppColor.lightBlueColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 80,
                          bottom: 170,
                          child: Image(
                            image: AssetImage(
                              "assets/images/Frame 1410148660.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),

                    /// Settings
                    ProfileWidget(
                      image: "assets/images/user-circle.png",
                      title: "تعديل الملف الشخصي",
                      type: "",
                    ),
                    SizedBox(height: 10),
                    ProfileWidget(
                      image: "assets/images/lock.png",
                      title: "تغيير كلمة المرور",
                      type: "",
                    ),
                    SizedBox(height: 10),
                    ProfileWidget(
                      image: "assets/images/star.png",
                      title: "المفضلة",
                      type: "",
                    ),
                    SizedBox(height: 10),
                    ProfileWidget(
                      image: "assets/images/moon.png",
                      title: "الوضع الداكن",
                      type: "mode",
                    ),
                    SizedBox(height: 10),
                    ProfileWidget(
                      image: "assets/images/Icon.png",
                      title: "المساعدة والدعم",
                      type: "",
                    ),

                    /// Sign out
                    SizedBox(height: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => LandingPage(),
                          ),
                        );
                      },
                      child: Text(
                        "تسجيل الخروج",
                        style: TextStyle(
                          color: AppColor.redColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
