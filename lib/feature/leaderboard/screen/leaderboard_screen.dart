import 'package:flutter/material.dart';
import 'package:roshan/feature/home/screen/home_screen.dart';
import 'package:roshan/feature/theme/app_color.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColor.lightWhiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.lightWhiteColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColor.blackColor),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            "المتصدرين",
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.headset_mic, color: AppColor.blackColor),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffCDCDCF),
                              border: Border.all(
                                color: AppColor.greenColor,
                                width: 3,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "G",
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ghadah",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.blackColor,
                            ),
                          ),
                          SizedBox(height: 5),

                          Container(
                            width: 99,
                            height: 110,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0x00000000).withValues(alpha: 0.4),
                                  Color(0xff00000000).withValues(alpha: 0.6),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: AlignmentGeometry.bottomCenter,
                              child: Row(
                                spacing: 2,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/image 12.png",
                                    ),
                                  ),
                                  Text(
                                    "500k",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColor.greenColor,
                                    width: 3,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    "assets/images/Avatar2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -45,
                                left: 0,
                                right: 0,
                                child: Image.asset("assets/images/crown.png"),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "خالد سعد",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.blackColor,
                            ),
                          ),
                          SizedBox(height: 5),

                          Container(
                            width: 99,
                            height: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFC107).withValues(alpha: 0.6),
                                  Color(0xffFFC107).withValues(alpha: 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Align(
                              alignment: AlignmentGeometry.bottomCenter,
                              child: Row(
                                spacing: 2,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/image 12.png",
                                    ),
                                  ),
                                  Text(
                                    "510k",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffCDCDCF),
                              border: Border.all(
                                color: AppColor.greenColor,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mohammed",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.blackColor,
                            ),
                          ),
                          SizedBox(height: 5),

                          Container(
                            width: 99,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffB76E79)..withValues(alpha: 1),
                                  Colors.black.withValues(alpha: 0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: AlignmentGeometry.bottomCenter,
                              child: Row(
                                spacing: 2,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/image 12.png",
                                    ),
                                  ),
                                  Text(
                                    "490k",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  spacing: 8,
                  children: [
                    HomeScreen().buildLeaderBoards(
                      "ساره محمد",
                      "480k",
                      "4",
                      "normal",
                    ),
                    HomeScreen().buildLeaderBoards(
                      "مرام",
                      "470k",
                      "5",
                      "normal",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Image(image: AssetImage("assets/images/column.png")),
                SizedBox(height: 20),
                HomeScreen().buildLeaderBoards(
                  "ساره محمد",
                  "480k",
                  "4",
                  "normal",
                ),
                SizedBox(height: 10),
                Stack(
                  clipBehavior: Clip.none,
                  // fit: StackFit.passthrough,
                  children: [
                    Positioned(
                      //  left: 10,
                      top: -15,
                      right: 120,
                      child: Image(
                        image: AssetImage("assets/images/Frame 1410148723.png"),
                        height: 110,
                      ),
                    ),
                    Container(
                      height: 71,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1E1E2C1A).withValues(alpha: 0.1),
                            spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/image 15.png"),
                              ),
                              Text("2390"),
                            ],
                          ),

                          Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/image 12.png"),
                              ),
                              Text("520"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  spacing: 8,
                  children: [
                    HomeScreen().buildLeaderBoards(
                      "ساره محمد",
                      "480k",
                      "2391",
                      "normal",
                    ),
                    HomeScreen().buildLeaderBoards(
                      "ساره محمد",
                      "480k",
                      "2392",
                      "normal",
                    ),
                    HomeScreen().buildLeaderBoards(
                      "ساره محمد",
                      "480k",
                      "2393",
                      "normal",
                    ),
                    HomeScreen().buildLeaderBoards(
                      "ساره محمد",
                      "480k",
                      "2394",
                      "normal",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
