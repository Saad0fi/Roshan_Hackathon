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
         leading: Padding(
           padding: const EdgeInsets.all(20),
           child: Icon(Icons.more_vert_rounded),
         ),
      title: Center(child: Text("لمة حيّك",style: TextStyle(color: Colors.black),)),
        actions: [Icon(Icons.arrow_forward_ios),],
actionsPadding: EdgeInsets.all(20),

      ),
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SearchBar(
            trailing: <Widget>[
              const Padding(
                padding:  EdgeInsets.only(left: 10),
                child: Image(image: AssetImage("assets/images/Search.png")),
              ),
            ],
            elevation: WidgetStateProperty.all(0.0),
            hintText:
              "ابحث عن محادثة..",
             // style: TextTheme.of(context).bodySmall,
            backgroundColor: WidgetStatePropertyAll(AppColor.lightWhiteColor),
            shape: WidgetStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Color(0xffEAEAF5), width: 1),
              ),
            ),

          ),
          SizedBox(height: 20,),
          ChatsWidget(image:"assets/images/Image.png",name:"كريم",msg:"هلا",
          num:"3"),
          Divider(color: Color(0xff20222C00),
          ),
          ChatsWidget(image:"assets/images/Image (1).png",name:"راشد",msg:"تمام باي",
              num:"1"),
          Divider(color: Color(0xff20222C00),),
          ChatsWidget(image:"assets/images/Image (2).png",name:"رائد",msg:"تقدر تتكفل بالهشيء",
              num:"2"),
          Divider(color: Color(0xff20222C00),),
          ChatsWidget(image:"assets/images/Image (3).png",name:"نورة",
              msg:"ياسلام ، متحمس له جداً!",
              num:"3"),
          Divider(color: Color(0xff20222C00),),
          ChatsWidget(image:"assets/images/Image (4).png",name:"باسم",
              msg:"ارحب",
              num:"4"),
          Divider(color: Color(0xff20222C00),),
        ],),
      )),
    )
    );
  }
}
