import 'package:flutter/material.dart';
import 'package:roshan/feature/home/screen/story_screen.dart';
import 'package:roshan/feature/home/widget/story_avatar.dart';
import 'package:roshan/feature/map/screen/map_screen.dart';
import 'package:roshan/feature/leaderboard/screen/leaderboard_screen.dart';

import '../../common/widget/button_widget.dart';
import '../widget/home_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeWidget widgetObj = HomeWidget();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
              actionsPadding: EdgeInsets.only(left: 19),
          actions: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff000000).withOpacity(0.2),
              ),

              child: Image(
                image: AssetImage("assets/images/solar_bell-bold (1).png"),
              ),
            ),
          ],
          // leading: Text("موقعك الحالي"),
          title: Padding(
            padding: EdgeInsets.only(right: 19),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "موقعك الحالي",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Row(
                  spacing: 5,
                  children: [
                    Image(image: AssetImage("assets/images/Group (5).png")),
                    Text(
                      "قرطبة ، الرياض",
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              SizedBox(height: 20),
                /// story
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        StoryAvatarWidget(
                          imagePath: "assets/images/Avatar1.png",
                          text: "قصتك",
                          showAddStory: true,
                        ),
                        StoryAvatarWidget(
                          imagePath: "assets/images/Avatar2.png",
                          text: "بيت المهنا",
                        ),
                        InkWell(
                          child: StoryAvatarWidget(
                            imagePath: "assets/images/Avatar3.png",
                            text: "ابو محمد",
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MoreStories(),
                              ),
                            );
                          },
                        ),
                        StoryAvatarWidget(
                          imagePath: "assets/images/Avatar4.png",
                          text: "ام خالد",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "تحديات الحي الحالية",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            SizedBox(height: 20),
                            Image(
                              image: AssetImage(
                                "assets/images/Frame 1410148729.png",
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text("نقاطي و تصنيفي"),
                            ),
                            /// leaderboard
                            SizedBox(height: 15),
                            Column(
                              spacing: 5,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: buildLeaderBoards(
                                    "محمد المسلم",
                                    "570",
                                    "2389",
                                    "normal",
                                  ),
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: -15,
                                      right: 120,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/images/Frame 1410148723.png",
                                        ),
                                        height: 110,
                                      ),
                                    ),
                                    Container(
                                      height: 71,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xff000000,
                                        ).withOpacity(0.2),
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                  "assets/images/image 15.png",
                                                ),
                                              ),
                                              Text("2390"),
                                            ],
                                          ),

                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                  "assets/images/image 12.png",
                                                ),
                                              ),
                                              Text("520"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: buildLeaderBoards(
                                    "ساره محمد",
                                    "480",
                                    "2391",
                                    "normal",
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            ButtonWidget(
                              type: "winner",
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => LeaderboardScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "المتصدرين",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("فعاليات و تحديات قادمه"),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text("عرض الكل"),
                                ),
                              ],
                            ),

                            /// tab bar
                            HomeWidget(),
                            SizedBox(height: 15),

                            /// Map
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text("اكتشف جيرانك "),
                            ),
                            SizedBox(height: 10),
                            InkWell(onTap: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => MapScreen(),
                              ),
                            );}
                                ,
                              child: Image(
                                image: AssetImage(
                                  "assets/images/Frame 1410148734.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        // ),
      ),
    );
  }

  Stack buildLeaderBoards(name, medal, star, type) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: type == "first"
                ? Color(0xff000000).withOpacity(0.3)
                : Color(0xff1E1E2C1A),
            borderRadius: BorderRadius.circular(15),
            // boxShadow: [
            //   BoxShadow(
            //     color:  Color(0xff1E1E2C1A).withOpacity(0.1),
            //     spreadRadius: 3,
            //     blurRadius:4,
            //     offset: Offset(0, 2),
            //   ),
            // ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(image: AssetImage("assets/images/image 15.png")),
                  Text(star),
                ],
              ),
              type == "first"
                  ? Positioned(
                      left: 0,
                      child: Image(
                        image: AssetImage("assets/images/Frame 1410148714.png"),
                      ),
                    )
                  : Text(name),
              Row(
                children: [
                  Image(image: AssetImage("assets/images/image 12.png")),
                  Text(medal),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
