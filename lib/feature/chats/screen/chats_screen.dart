import 'package:flutter/material.dart';

import '../../theme/app_color.dart';
import '../widget/chats_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:
      Scaffold(
      appBar: AppBar(
         // leading: Padding(
         //   padding: const EdgeInsets.all(20),
         //   child: Icon(Icons.more_vert_rounded),
         // ),
        centerTitle: true,
      title: Text("سولف",
        style: TextTheme.of(context).titleMedium,
        ),
        actions: [Icon(Icons.settings,),],
actionsPadding: EdgeInsets.only(left: 26),

      ),
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(children: [
          /// Serach bar
          SearchBar(
            leading:
              const Padding(
                padding:  EdgeInsets.only(right: 10),
                child:
          Image(image: AssetImage("assets/images/Vector (19).png")),
              ),
            hintText: "ابحث عن محادثة..",
          ),
          SizedBox(height: 20,),
          /// New Messages 
          Row(spacing: 10,
            children: [
              Stack(clipBehavior: Clip.none,
                  children: [
                    Image(image: AssetImage("assets/images/Ellipse 19.png")),
                    Positioned(
                        top: -2,
                        child: Image(image: AssetImage("assets/images/Ellipse 129 (1).png")),
                    ),
                    Positioned(right: 9,
                        top: 10,
                        child:
                    Image(image: AssetImage("assets/images/fluent_chat-24-regular (1).png"))),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Color(0xff7879796E)
            //     ),
            //     borderRadius: BorderRadius.circular(50)
            //   ),
            //   child: Image(image: AssetImage("assets/images/fluent_chat-24-regular (1).png")),
            // ),
            ]),
            Text("رسائل جديدة"),
          ],),
          SizedBox(height: 20,),
          ChatsWidget(image:"assets/images/Image.png",name:"ابو خالد",msg:"هلا",
          total:"3",time: "الان"),
          Divider(color: Color(0xff20222C00),
          ),
          ChatsWidget(image:"assets/images/Image (1).png",name:"كريم",msg:"تمام باي",
              total:"1",time: "5 دقائق"),
          Divider(color: Color(0xff20222C00),),
          ChatsWidget(image:"assets/images/Image (2).png",name:"محمد خالد",msg:"اكيددد ان شاءالله",
              total:"2",time: "1 ساعة"),

        ],),
      )),
    )
    );
  }
}
