import 'package:flutter/material.dart';
import 'package:roshan/feature/chats/screen/chats_screen.dart';
import 'package:roshan/feature/navigation/screen/navigation_screen.dart';

import '../../theme/app_color.dart';

class SpecificChatScreen extends StatelessWidget {
  final String image, name;
  const SpecificChatScreen({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(onTap: (){
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (context) => NavigationScreen(),
                  //   ),
                  // );
               //   Navigator.pushReplacement(context, '/ChatScreen');
                  Navigator.pop(context);

                },
                    child: Icon(Icons.arrow_back_ios, color: Color(0xff63646B))),
                Stack(
                  children: [
                    Image(image: AssetImage(image)),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image(
                        image: AssetImage("assets/images/Ellipse.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Text(name, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),

          actions: [Icon(Icons.more_vert_rounded, color: Color(0xff63646B))],
          actionsPadding: EdgeInsets.all(20),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Color(0xffF6F6F6),
              child: Column(
                children: [
                  Center(child: Text("اليوم",
                      style: TextStyle(color: Color(0xff20222C),
                      fontSize: 10))
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                      child: Image(image: AssetImage("assets/images/1 (1).png"))),
            Align(
              alignment: Alignment.centerLeft,
              child:
              Image(image: AssetImage("assets/images/2 (1).png"))),
                ],
              ),
            ),
          ),
        ),
        bottomSheet:
            //  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            Container(
              height: 107,
              color: Color(0xffFEFEFE),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image(image: AssetImage("assets/images/text.png")),
                    //  SearchBar(
                    //    backgroundColor: WidgetStatePropertyAll(AppColor.whiteColor),
                    //    hintText: "اكتب شيء..",
                    //  ),
                    Image(image: AssetImage("assets/images/text1.png")),
              // Row(//spacing: 5,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
                    Image(image: AssetImage("assets/images/Image (5).png")),
                    Image(image: AssetImage("assets/images/Link.png")),
                    Image(image: AssetImage("assets/images/Emoji.png")),
            //  ]),
                ],
                ),
              ),
            ),
      ),
    );
  }
}
