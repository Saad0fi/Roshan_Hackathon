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
          backgroundColor: Color(0xffDBDBDD),
          titleSpacing: 0,
          toolbarHeight: 100,
leading:   InkWell(onTap: (){
  Navigator.pop(context);

},
    child: Icon(Icons.arrow_back_ios, color:
    Colors.black)),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black,
                        width: 2)
                      ),
                        child: ClipOval(child: Image(image: AssetImage(image)))),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image(
                        image: AssetImage("assets/images/Ellipse (1).png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Text(name, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),

          actions: [Icon(Icons.more_vert_rounded, color:
          Colors.black)],
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
                      style: TextStyle(
                          color: Color(0xff71717A),
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
            Container(
              height: 107,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                color: Color(0xFF9B9BA3),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/images/Frame 427318934 (1).png")),
              //       Image(image: AssetImage("assets/images/text1.png")),
              // // Row(//spacing: 5,
              // //   crossAxisAlignment: CrossAxisAlignment.start,
              // //   children: [
              //       Image(image: AssetImage("assets/images/Image (5).png")),
              //       Image(image: AssetImage("assets/images/Link.png")),
              //       Image(image: AssetImage("assets/images/Emoji.png")),
            //  ]),
                ],
                ),
              ),
            ),
      ),
    );
  }
}
